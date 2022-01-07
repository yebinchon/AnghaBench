
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int tolower (int) ;
 int xprintf (char*,...) ;
 int xputchar (int) ;

__attribute__((used)) static void print_dep(const char *m, int slen, const char *dir)
{
 int c, prev_c = '/', i;

 xprintf("    $(wildcard %s/", dir);
 for (i = 0; i < slen; i++) {
  c = m[i];
  if (c == '_')
   c = '/';
  else
   c = tolower(c);
  if (c != '/' || prev_c != '/')
   xputchar(c);
  prev_c = c;
 }
 xprintf(".h) \\\n");
}
