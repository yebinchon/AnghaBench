
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fprintf (int ,char*,...) ;
 int stderr ;

__attribute__((used)) static void print_section_list(const char * const list[20])
{
 const char *const *s = list;

 while (*s) {
  fprintf(stderr, "%s", *s);
  s++;
  if (*s)
   fprintf(stderr, ", ");
 }
 fprintf(stderr, "\n");
}
