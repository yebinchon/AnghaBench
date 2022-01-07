
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ WARN_ON (int) ;
 int strlen (char*) ;
 char* strstr (char*,char const*) ;

unsigned int err_pos(char *cmd, const char *str)
{
 char *found;

 if (WARN_ON(!strlen(cmd)))
  return 0;

 found = strstr(cmd, str);
 if (found)
  return found - cmd;

 return 0;
}
