
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct prog_test_def {char const* subtest_name; int subtest_num; int error_cnt; int old_error_cnt; } ;
struct TYPE_2__ {struct prog_test_def* test; int subtest_selector; int stderr; } ;


 TYPE_1__ env ;
 int fprintf (int ,char*,int) ;
 int should_run (int *,int,char const*) ;
 int test__end_subtest () ;

bool test__start_subtest(const char *name)
{
 struct prog_test_def *test = env.test;

 if (test->subtest_name) {
  test__end_subtest();
  test->subtest_name = ((void*)0);
 }

 test->subtest_num++;

 if (!name || !name[0]) {
  fprintf(env.stderr,
   "Subtest #%d didn't provide sub-test name!\n",
   test->subtest_num);
  return 0;
 }

 if (!should_run(&env.subtest_selector, test->subtest_num, name))
  return 0;

 test->subtest_name = name;
 env.test->old_error_cnt = env.test->error_cnt;

 return 1;
}
