#!/bin/bash

### Colors ###
lightgreen='\e[1;32m'
white='\e[1;37m'
red='\e[1;31m'
blue='\e[0;34m'
reset='\e[0m'

### Check Internet ###
{
  ping -c 1 google.com > /dev/null
  if [[ "$?" != 0 ]]
  then
    echo -e $red"Checking For Internet: FAILED
    This Script Needs An Active Internet Connection"
    echo " Good Bye 😊"
    echo && sleep 2
    exit
  else
    echo -e $lightgreen " -----------------------------------"
    echo -e $white " Checking For Internet: $red CONNECTED"
    echo -e $lightgreen " -----------------------------------"
  fi
}

### Function Banner ###
echo -e $red"+++++++++++++++++++++++++++++++++++++++++++++"
echo -e $blue"╔═══╗╔═══╗╔╗──╔╗╔═══╗╔═══╗╔═══╗╔═══╗╔══╗╔═══╗"$red"+"
echo -e $blue"║╔═╗║║╔══╝║╚╗╔╝║║╔══╝║╔═╗║║╔═╗║║╔══╝╚╣─╝║╔═╗║"$red"+"
echo -e $blue"║╚═╝║║╚══╗╚╗║║╔╝║╚══╗║╚═╝║║╚══╗║╚══╗─║║─║╚═╝║"$red"+"
echo -e $blue"║╔╗╔╝║╔══╝─║╚╝║─║╔══╝║╔╗╔╝╚══╗║║╔══╝─║║─║╔══╝"$red"+"
echo -e $blue"║║║╚╗║╚══╗─╚╗╔╝─║╚══╗║║║╚╗║╚═╝║║╚══╗╔╣─╗║║───"$red"+"
echo -e $blue"╚╝╚═╝╚═══╝──╚╝──╚═══╝╚╝╚═╝╚═══╝╚═══╝╚══╝╚╝───"$red"+"
echo -e $red"+++++++++++++++++++++++++++++++++++++++++++++"
echo -e $reset""

### Function Tools ###
if [ -z "$1" ]; then
        echo -e $red"["$lightgreen"+"$red"]"$reset"https://termuxindonesia.wordpress.com"
        echo -e $red"["$lightgreen"+"$red"]"$reset"Usage ReverseIP"
        echo -e $red"["$lightgreen"+"$red"]"$reset"Use: $red$0 <URL>"$reset
        exit 0
fi

curl http://api.hackertarget.com/reverseiplookup/?q=$1
