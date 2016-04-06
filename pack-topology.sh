#/bin/env bash

VERSION=$(git rev-parse --short HEAD)
ZIPFILE="topology-$VERSION.zip"

rm -f $ZIPFILE

7z a $ZIPFILE                 \
    availabilitySet.json      \
    createUiDefinition.json   \
    mainTemplate.json         \
    node-*.*                  \
    quasardbTestbox.json      \
    quasardbTestbox.motd.txt  \
    quasardbTestbox.setup.sh  \
    storageAccount.json       \
    virtualNetwork.json
