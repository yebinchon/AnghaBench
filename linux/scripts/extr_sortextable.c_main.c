
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int do_file (char*) ;
 int * ehdr_curr ;
 int exit (int) ;
 int fd_map ;
 int fprintf (int ,char*,...) ;
 int jmpenv ;
 int mmap_failed ;
 int setjmp (int ) ;
 int stderr ;

int
main(int argc, char *argv[])
{
 int n_error = 0;
 int i;

 if (argc < 2) {
  fprintf(stderr, "usage: sortextable vmlinux...\n");
  return 0;
 }


 for (i = 1; i < argc; i++) {
  char *file = argv[i];
  int const sjval = setjmp(jmpenv);

  switch (sjval) {
  default:
   fprintf(stderr, "internal error: %s\n", file);
   exit(1);
   break;
  case 129:

   fd_map = -1;
   ehdr_curr = ((void*)0);
   mmap_failed = 1;
   do_file(file);
   break;
  case 130:
   ++n_error;
   break;
  case 128:

   break;
  }
 }
 return !!n_error;
}
