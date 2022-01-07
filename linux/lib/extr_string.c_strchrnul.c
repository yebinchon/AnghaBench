
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
char *strchrnul(const char *s, int c)
{
 while (*s && *s != (char)c)
  s++;
 return (char *)s;
}
