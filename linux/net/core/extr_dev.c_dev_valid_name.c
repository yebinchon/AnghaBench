
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ IFNAMSIZ ;
 scalar_t__ isspace (char const) ;
 int strcmp (char const*,char*) ;
 scalar_t__ strnlen (char const*,scalar_t__) ;

bool dev_valid_name(const char *name)
{
 if (*name == '\0')
  return 0;
 if (strnlen(name, IFNAMSIZ) == IFNAMSIZ)
  return 0;
 if (!strcmp(name, ".") || !strcmp(name, ".."))
  return 0;

 while (*name) {
  if (*name == '/' || *name == ':' || isspace(*name))
   return 0;
  name++;
 }
 return 1;
}
