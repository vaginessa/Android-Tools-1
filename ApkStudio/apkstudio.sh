#!/bin/sh
APKSTUDIO_BINARY=`basename $0 | sed s,\.sh$,,`
APKSTUDIO_DIRECTORY=`dirname $0`

PREVIOUS_DIRECTORY="${APKSTUDIO_DIRECTORY#?}"

if [ "${APKSTUDIO_DIRECTORY%$PREVIOUS_DIRECTORY}" != "/" ];
	then
		APKSTUDIO_DIRECTORY=$PWD/$APKSTUDIO_DIRECTORY
fi

export LD_LIBRARY_PATH=$APKSTUDIO_DIRECTORY
export QT_QPA_PLATFORM_PLUGIN_PATH=$APKSTUDIO_DIRECTORY/platforms
$APKSTUDIO_DIRECTORY/$APKSTUDIO_BINARY "$@" -style gtk+