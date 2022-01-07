
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ isalnum (char const) ;
 scalar_t__ isspace (char const) ;
 scalar_t__ strchr (char*,char const) ;

__attribute__((used)) static int mangle_name(const char *name, char *target)
{
 char *t = target;

 while (*name == '/' || *name == '.')
  name++;

 if (target) {
  for (; *name; name++) {
   if (*name == '/')
    *(t)++ = '.';
   else if (isspace(*name))
    *(t)++ = '_';
   else if (isalnum(*name) || strchr("._-", *name))
    *(t)++ = *name;
  }

  *t = 0;
 } else {
  int len = 0;
  for (; *name; name++) {
   if (isalnum(*name) || isspace(*name) ||
       strchr("/._-", *name))
    len++;
  }

  return len;
 }

 return t - target;
}
