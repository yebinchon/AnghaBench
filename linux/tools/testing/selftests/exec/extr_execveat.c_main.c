
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int atoi (char*) ;
 char** envp ;
 int fflush (int ) ;
 char* getenv (char*) ;
 int prerequisites () ;
 int printf (char*,...) ;
 int run_tests () ;
 int stdout ;
 scalar_t__ strcmp (char const*,char*) ;

int main(int argc, char **argv)
{
 int ii;
 int rc;
 const char *verbose = getenv("VERBOSE");

 if (argc >= 2) {

  const char *in_test = getenv("IN_TEST");

  if (verbose) {
   printf("  invoked with:");
   for (ii = 0; ii < argc; ii++)
    printf(" [%d]='%s'", ii, argv[ii]);
   printf("\n");
  }


  if (!in_test || strcmp(in_test, "yes") != 0) {
   printf("[FAIL] (no IN_TEST=yes in env)\n");
   return 1;
  }


  rc = atoi(argv[argc - 1]);
  fflush(stdout);
 } else {
  prerequisites();
  if (verbose)
   envp[1] = "VERBOSE=1";
  rc = run_tests();
  if (rc > 0)
   printf("%d tests failed\n", rc);
 }
 return rc;
}
