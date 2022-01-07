
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bpf_test {char* descr; } ;


 int EXIT_FAILURE ;
 int EXIT_SUCCESS ;
 int do_test_single (struct bpf_test*,int,int*,int*) ;
 int printf (char*,int,...) ;
 int set_admin (int) ;
 int skips ;
 scalar_t__ test_as_unpriv (struct bpf_test*) ;
 struct bpf_test* tests ;
 scalar_t__ unpriv_disabled ;

__attribute__((used)) static int do_test(bool unpriv, unsigned int from, unsigned int to)
{
 int i, passes = 0, errors = 0;

 for (i = from; i < to; i++) {
  struct bpf_test *test = &tests[i];




  if (test_as_unpriv(test) && unpriv_disabled) {
   printf("#%d/u %s SKIP\n", i, test->descr);
   skips++;
  } else if (test_as_unpriv(test)) {
   if (!unpriv)
    set_admin(0);
   printf("#%d/u %s ", i, test->descr);
   do_test_single(test, 1, &passes, &errors);
   if (!unpriv)
    set_admin(1);
  }

  if (unpriv) {
   printf("#%d/p %s SKIP\n", i, test->descr);
   skips++;
  } else {
   printf("#%d/p %s ", i, test->descr);
   do_test_single(test, 0, &passes, &errors);
  }
 }

 printf("Summary: %d PASSED, %d SKIPPED, %d FAILED\n", passes,
        skips, errors);
 return errors ? EXIT_FAILURE : EXIT_SUCCESS;
}
