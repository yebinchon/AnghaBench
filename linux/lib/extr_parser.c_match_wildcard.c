
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
bool match_wildcard(const char *pattern, const char *str)
{
 const char *s = str;
 const char *p = pattern;
 bool star = 0;

 while (*s) {
  switch (*p) {
  case '?':
   s++;
   p++;
   break;
  case '*':
   star = 1;
   str = s;
   if (!*++p)
    return 1;
   pattern = p;
   break;
  default:
   if (*s == *p) {
    s++;
    p++;
   } else {
    if (!star)
     return 0;
    str++;
    s = str;
    p = pattern;
   }
   break;
  }
 }

 if (*p == '*')
  ++p;
 return !*p;
}
