#!/bin/bash
# I changed supernova.py to output the file name for its text output
# The next line takes that output as input to the script that converts
# the text to images.
TEXTFILE=$(python /pyfiles/supernova.py);
python /textImageGenerators/superNovaText.py $TEXTFILE;
rm $TEXTFILE;
rm /dataStorage/novaInstance.txt