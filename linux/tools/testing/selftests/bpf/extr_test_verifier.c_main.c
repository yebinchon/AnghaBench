
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int ARRAY_SIZE (int ) ;
 int EXIT_FAILURE ;
 char* UNPRIV_SYSCTL ;
 unsigned int atoi (char*) ;
 int bpf_semi_rand_init () ;
 int do_test (int,unsigned int,unsigned int) ;
 int get_unpriv_disabled () ;
 int is_admin () ;
 int printf (char*,char*) ;
 scalar_t__ strcmp (char*,char*) ;
 int tests ;
 scalar_t__ unpriv_disabled ;
 int verbose ;

int main(int argc, char **argv)
{
 unsigned int from = 0, to = ARRAY_SIZE(tests);
 bool unpriv = !is_admin();
 int arg = 1;

 if (argc > 1 && strcmp(argv[1], "-v") == 0) {
  arg++;
  verbose = 1;
  argc--;
 }

 if (argc == 3) {
  unsigned int l = atoi(argv[arg]);
  unsigned int u = atoi(argv[arg + 1]);

  if (l < to && u < to) {
   from = l;
   to = u + 1;
  }
 } else if (argc == 2) {
  unsigned int t = atoi(argv[arg]);

  if (t < to) {
   from = t;
   to = t + 1;
  }
 }

 get_unpriv_disabled();
 if (unpriv && unpriv_disabled) {
  printf("Cannot run as unprivileged user with sysctl %s.\n",
         UNPRIV_SYSCTL);
  return EXIT_FAILURE;
 }

 bpf_semi_rand_init();
 return do_test(unpriv, from, to);
}
