
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int memcmp (char const*,char const*,int) ;
 int strlen (char const*) ;

__attribute__((used)) static int matches(const char *cmd, const char *pattern)
{
 int len = strlen(cmd);

 if (len > strlen(pattern))
  return -1;

 return memcmp(pattern, cmd, len);
}
