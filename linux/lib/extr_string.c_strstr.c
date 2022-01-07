
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int memcmp (char const*,char const*,size_t) ;
 size_t strlen (char const*) ;

char *strstr(const char *s1, const char *s2)
{
 size_t l1, l2;

 l2 = strlen(s2);
 if (!l2)
  return (char *)s1;
 l1 = strlen(s1);
 while (l1 >= l2) {
  l1--;
  if (!memcmp(s1, s2, l2))
   return (char *)s1;
  s1++;
 }
 return ((void*)0);
}
