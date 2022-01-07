
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ARRAY_SIZE (int *) ;
 int printf (char*,int,int) ;
 scalar_t__ run_test_case (int *) ;
 int * tests ;

__attribute__((used)) static int run_tests(void)
{
 int passes = 0;
 int fails = 0;
 int i;

 for (i = 0; i < ARRAY_SIZE(tests); ++i) {
  if (run_test_case(&tests[i]))
   ++fails;
  else
   ++passes;
 }
 printf("Summary: %d PASSED, %d FAILED\n", passes, fails);
 return fails ? -1 : 0;
}
