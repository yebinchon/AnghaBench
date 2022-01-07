
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ftrace ;


 scalar_t__ do_file (char*) ;
 int fprintf (int ,char*,...) ;
 int getopt (int,char**,char*) ;
 int optind ;
 int stderr ;
 scalar_t__ strcmp (char*,char const*) ;
 int strlen (char*) ;
 int warn_on_notrace_sect ;

int main(int argc, char *argv[])
{
 const char ftrace[] = "/ftrace.o";
 int ftrace_size = sizeof(ftrace) - 1;
 int n_error = 0;
 int c;
 int i;

 while ((c = getopt(argc, argv, "w")) >= 0) {
  switch (c) {
  case 'w':
   warn_on_notrace_sect = 1;
   break;
  default:
   fprintf(stderr, "usage: recordmcount [-w] file.o...\n");
   return 0;
  }
 }

 if ((argc - optind) < 1) {
  fprintf(stderr, "usage: recordmcount [-w] file.o...\n");
  return 0;
 }


 for (i = optind; i < argc; i++) {
  char *file = argv[i];
  int len;






  len = strlen(file);
  if (len >= ftrace_size &&
      strcmp(file + (len - ftrace_size), ftrace) == 0)
   continue;

  if (do_file(file)) {
   fprintf(stderr, "%s: failed\n", file);
   ++n_error;
  }
 }
 return !!n_error;
}
