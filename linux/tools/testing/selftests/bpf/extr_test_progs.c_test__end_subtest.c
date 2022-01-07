
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct prog_test_def {int error_cnt; int old_error_cnt; int test_num; int subtest_num; char* subtest_name; } ;
struct TYPE_2__ {int stdout; int sub_succ_cnt; int fail_cnt; struct prog_test_def* test; } ;


 int dump_test_log (struct prog_test_def*,int) ;
 TYPE_1__ env ;
 int fprintf (int ,char*,int,int,char*,char*) ;
 int skip_account () ;

void test__end_subtest()
{
 struct prog_test_def *test = env.test;
 int sub_error_cnt = test->error_cnt - test->old_error_cnt;

 if (sub_error_cnt)
  env.fail_cnt++;
 else
  env.sub_succ_cnt++;
 skip_account();

 dump_test_log(test, sub_error_cnt);

 fprintf(env.stdout, "#%d/%d %s:%s\n",
        test->test_num, test->subtest_num,
        test->subtest_name, sub_error_cnt ? "FAIL" : "OK");
}
