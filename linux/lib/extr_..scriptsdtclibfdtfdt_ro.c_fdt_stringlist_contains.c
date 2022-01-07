
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* memchr (char const*,char,int) ;
 scalar_t__ memcmp (char const*,char const*,int) ;
 int strlen (char const*) ;

int fdt_stringlist_contains(const char *strlist, int listlen, const char *str)
{
 int len = strlen(str);
 const char *p;

 while (listlen >= len) {
  if (memcmp(str, strlist, len+1) == 0)
   return 1;
  p = memchr(strlist, '\0', listlen);
  if (!p)
   return 0;
  listlen -= (p-strlist) + 1;
  strlist = p + 1;
 }
 return 0;
}
