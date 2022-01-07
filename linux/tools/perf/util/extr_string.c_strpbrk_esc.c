
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* strpbrk (char*,char const*) ;

char *strpbrk_esc(char *str, const char *stopset)
{
 char *ptr;

 do {
  ptr = strpbrk(str, stopset);
  if (ptr == str ||
      (ptr == str + 1 && *(ptr - 1) != '\\'))
   break;
  str = ptr + 1;
 } while (ptr && *(ptr - 1) == '\\' && *(ptr - 2) != '\\');

 return ptr;
}
