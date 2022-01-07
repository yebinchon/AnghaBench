
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static char *ovl_next_opt(char **s)
{
 char *sbegin = *s;
 char *p;

 if (sbegin == ((void*)0))
  return ((void*)0);

 for (p = sbegin; *p; p++) {
  if (*p == '\\') {
   p++;
   if (!*p)
    break;
  } else if (*p == ',') {
   *p = '\0';
   *s = p + 1;
   return sbegin;
  }
 }
 *s = ((void*)0);
 return sbegin;
}
