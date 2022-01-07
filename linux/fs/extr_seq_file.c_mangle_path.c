
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int strchr (char const*,char) ;

char *mangle_path(char *s, const char *p, const char *esc)
{
 while (s <= p) {
  char c = *p++;
  if (!c) {
   return s;
  } else if (!strchr(esc, c)) {
   *s++ = c;
  } else if (s + 4 > p) {
   break;
  } else {
   *s++ = '\\';
   *s++ = '0' + ((c & 0300) >> 6);
   *s++ = '0' + ((c & 070) >> 3);
   *s++ = '0' + (c & 07);
  }
 }
 return ((void*)0);
}
