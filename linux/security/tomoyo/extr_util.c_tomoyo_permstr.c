
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* strstr (char const*,char const*) ;

bool tomoyo_permstr(const char *string, const char *keyword)
{
 const char *cp = strstr(string, keyword);

 if (cp)
  return cp == string || *(cp - 1) == '/';
 return 0;
}
