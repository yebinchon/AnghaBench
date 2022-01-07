
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
char *strnchr(const char *s, size_t count, int c)
{
 while (count--) {
  if (*s == (char)c)
   return (char *)s;
  if (*s++ == '\0')
   break;
 }
 return ((void*)0);
}
