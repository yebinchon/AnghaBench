
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int strcmp (char*,char const*) ;
 int strncmp (char const*,char*,int) ;

int snd_info_check_reserved_words(const char *str)
{
 static char *reserved[] =
 {
  "version",
  "meminfo",
  "memdebug",
  "detect",
  "devices",
  "oss",
  "cards",
  "timers",
  "synth",
  "pcm",
  "seq",
  ((void*)0)
 };
 char **xstr = reserved;

 while (*xstr) {
  if (!strcmp(*xstr, str))
   return 0;
  xstr++;
 }
 if (!strncmp(str, "card", 4))
  return 0;
 return 1;
}
