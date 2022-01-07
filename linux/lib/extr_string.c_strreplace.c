
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
char *strreplace(char *s, char old, char new)
{
 for (; *s; ++s)
  if (*s == old)
   *s = new;
 return s;
}
