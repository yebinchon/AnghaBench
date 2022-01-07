
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int exit (int) ;
 int fprintf (int ,char*) ;
 int free (void*) ;
 int is_ignored_file (char*,int) ;
 int parse_config_file (void*) ;
 void* read_file (char*) ;
 int stderr ;
 int xprintf (char*,char const*,...) ;

__attribute__((used)) static void parse_dep_file(char *m, const char *target)
{
 char *p;
 int is_last, is_target;
 int saw_any_target = 0;
 int is_first_dep = 0;
 void *buf;

 while (1) {

  while (*m == ' ' || *m == '\\' || *m == '\n')
   m++;

  if (!*m)
   break;


  p = m;
  while (*p && *p != ' ' && *p != '\\' && *p != '\n')
   p++;
  is_last = (*p == '\0');

  is_target = (*(p-1) == ':');

  if (is_target) {

   is_first_dep = 1;
  } else if (!is_ignored_file(m, p - m)) {
   *p = '\0';







   if (is_first_dep) {
    if (!saw_any_target) {
     saw_any_target = 1;
     xprintf("source_%s := %s\n\n",
      target, m);
     xprintf("deps_%s := \\\n", target);
    }
    is_first_dep = 0;
   } else {
    xprintf("  %s \\\n", m);
   }

   buf = read_file(m);
   parse_config_file(buf);
   free(buf);
  }

  if (is_last)
   break;





  m = p + 1;
 }

 if (!saw_any_target) {
  fprintf(stderr, "fixdep: parse error; no targets found\n");
  exit(1);
 }

 xprintf("\n%s: $(deps_%s)\n\n", target, target);
 xprintf("$(deps_%s):\n", target);
}
