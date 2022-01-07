
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PATH_MAX ;
 int exit (int) ;
 int fprintf (int ,char*) ;
 int memcpy (char*,char*,int) ;
 int printf (char*,char*,...) ;
 int stderr ;
 char* target ;

__attribute__((used)) static void parse_dep_file(void *map, size_t len)
{
 char *m = map;
 char *end = m + len;
 char *p;
 char s[PATH_MAX];
 int is_target, has_target = 0;
 int saw_any_target = 0;
 int is_first_dep = 0;

 while (m < end) {

  while (m < end && (*m == ' ' || *m == '\\' || *m == '\n'))
   m++;

  p = m;
  while (p < end && *p != ' ' && *p != '\\' && *p != '\n')
   p++;

  is_target = (*(p-1) == ':');

  if (is_target) {

   is_first_dep = 1;
   has_target = 1;
  } else if (has_target) {

   memcpy(s, m, p-m);
   s[p - m] = 0;
   if (is_first_dep) {
    if (!saw_any_target) {
     saw_any_target = 1;
     printf("source_%s := %s\n\n",
      target, s);
     printf("deps_%s := \\\n",
      target);
    }
    is_first_dep = 0;
   } else
    printf("  %s \\\n", s);
  }




  m = p + 1;
 }

 if (!saw_any_target) {
  fprintf(stderr, "fixdep: parse error; no targets found\n");
  exit(1);
 }

 printf("\n%s: $(deps_%s)\n\n", target, target);
 printf("$(deps_%s):\n", target);
}
