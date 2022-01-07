
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EXIT_FAILURE ;
 int EXIT_SUCCESS ;
 char* _ (char*) ;
 int be_verbose ;
 int bitmask_parselist (char const*,int ) ;
 int bitmask_setall (int ) ;
 int cpus_chosen ;
 int exit (int ) ;
 int fprintf (int ,char*,...) ;
 int print_help () ;
 int print_version () ;
 int stderr ;
 int strcmp (char const*,char*) ;

__attribute__((used)) static void handle_options(int *argc, const char ***argv)
{
 int ret, x, new_argc = 0;

 if (*argc < 1)
  return;

 for (x = 0; x < *argc && ((*argv)[x])[0] == '-'; x++) {
  const char *param = (*argv)[x];
  if (!strcmp(param, "-h") || !strcmp(param, "--help")) {
   print_help();
   exit(EXIT_SUCCESS);
  } else if (!strcmp(param, "-c") || !strcmp(param, "--cpu")) {
   if (*argc < 2) {
    print_help();
    exit(EXIT_FAILURE);
   }
   if (!strcmp((*argv)[x+1], "all"))
    bitmask_setall(cpus_chosen);
   else {
    ret = bitmask_parselist(
      (*argv)[x+1], cpus_chosen);
    if (ret < 0) {
     fprintf(stderr, _("Error parsing cpu "
         "list\n"));
     exit(EXIT_FAILURE);
    }
   }
   x += 1;

   new_argc += 2;
   continue;
  } else if (!strcmp(param, "-v") ||
   !strcmp(param, "--version")) {
   print_version();
   exit(EXIT_SUCCESS);






  } else {
   fprintf(stderr, "Unknown option: %s\n", param);
   print_help();
   exit(EXIT_FAILURE);
  }
 }
 *argc -= new_argc;
 *argv += new_argc;
}
