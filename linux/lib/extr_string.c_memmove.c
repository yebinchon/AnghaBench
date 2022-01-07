
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
void *memmove(void *dest, const void *src, size_t count)
{
 char *tmp;
 const char *s;

 if (dest <= src) {
  tmp = dest;
  s = src;
  while (count--)
   *tmp++ = *s++;
 } else {
  tmp = dest;
  tmp += count;
  s = src;
  s += count;
  while (count--)
   *--tmp = *--s;
 }
 return dest;
}
