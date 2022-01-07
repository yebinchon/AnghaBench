
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* initial_path ;
 int initial_pathlen ;
 int strcpy (char*,char*) ;
 int strlen (char*) ;
 char* xmalloc (int) ;

__attribute__((used)) static char *shorten_to_initial_path(char *fname)
{
 char *p1, *p2, *prevslash1 = ((void*)0);
 int slashes = 0;

 for (p1 = fname, p2 = initial_path; *p1 && *p2; p1++, p2++) {
  if (*p1 != *p2)
   break;
  if (*p1 == '/') {
   prevslash1 = p1;
   slashes++;
  }
 }
 p1 = prevslash1 + 1;
 if (prevslash1) {
  int diff = initial_pathlen - slashes, i, j;
  int restlen = strlen(fname) - (p1 - fname);
  char *res;

  res = xmalloc((3 * diff) + restlen + 1);
  for (i = 0, j = 0; i != diff; i++) {
   res[j++] = '.';
   res[j++] = '.';
   res[j++] = '/';
  }
  strcpy(res + j, p1);
  return res;
 }
 return ((void*)0);
}
