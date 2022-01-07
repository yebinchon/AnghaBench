
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ malloc (int) ;

__attribute__((used)) static char *fixregex(char *s)
{
 int len = 0;
 int esc_count = 0;
 char *fixed = ((void*)0);
 char *p, *q;


 for (p = s; *p; p++) {
  ++len;
  if (*p == '\\')
   ++esc_count;
 }

 if (esc_count == 0)
  return s;


 fixed = (char *) malloc(len + 1);
 if (!fixed)
  return ((void*)0);


 q = fixed;
 for (p = s; *p; p++) {
  if (*p == '\\') {
   *q = '\\';
   ++q;
  }
  *q = *p;
  ++q;
 }
 *q = '\0';
 return fixed;
}
