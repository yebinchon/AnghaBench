
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static unsigned int ovl_split_lowerdirs(char *str)
{
 unsigned int ctr = 1;
 char *s, *d;

 for (s = d = str;; s++, d++) {
  if (*s == '\\') {
   s++;
  } else if (*s == ':') {
   *d = '\0';
   ctr++;
   continue;
  }
  *d = *s;
  if (!*s)
   break;
 }
 return ctr;
}
