
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ asprintf (char**,char*,char const*,char*) ;
 int free (char*) ;
 scalar_t__ strstr (char*,char const*) ;

__attribute__((used)) static char *prefix_if_not_in(const char *pre, char *str)
{
 char *n;

 if (!str || strstr(str, pre))
  return str;

 if (asprintf(&n, "%s,%s", pre, str) < 0)
  return ((void*)0);

 free(str);
 return n;
}
