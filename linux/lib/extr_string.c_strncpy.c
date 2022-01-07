
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
char *strncpy(char *dest, const char *src, size_t count)
{
 char *tmp = dest;

 while (count) {
  if ((*tmp = *src) != 0)
   src++;
  tmp++;
  count--;
 }
 return dest;
}
