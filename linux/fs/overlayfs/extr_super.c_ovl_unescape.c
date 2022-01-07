
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static void ovl_unescape(char *s)
{
 char *d = s;

 for (;; s++, d++) {
  if (*s == '\\')
   s++;
  *d = *s;
  if (!*s)
   break;
 }
}
