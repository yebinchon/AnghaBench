
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
char *strncat(char *dest, const char *src, size_t count)
{
 char *tmp = dest;

 if (count) {
  while (*dest)
   dest++;
  while ((*dest++ = *src++) != 0) {
   if (--count == 0) {
    *dest = '\0';
    break;
   }
  }
 }
 return tmp;
}
