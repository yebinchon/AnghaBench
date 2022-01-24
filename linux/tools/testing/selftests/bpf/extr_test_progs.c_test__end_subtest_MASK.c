#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct prog_test_def {int error_cnt; int old_error_cnt; int test_num; int subtest_num; char* subtest_name; } ;
struct TYPE_2__ {int /*<<< orphan*/  stdout; int /*<<< orphan*/  sub_succ_cnt; int /*<<< orphan*/  fail_cnt; struct prog_test_def* test; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct prog_test_def*,int) ; 
 TYPE_1__ env ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int,int,char*,char*) ; 
 int /*<<< orphan*/  FUNC2 () ; 

void FUNC3()
{
	struct prog_test_def *test = env.test;
	int sub_error_cnt = test->error_cnt - test->old_error_cnt;

	if (sub_error_cnt)
		env.fail_cnt++;
	else
		env.sub_succ_cnt++;
	FUNC2();

	FUNC0(test, sub_error_cnt);

	FUNC1(env.stdout, "#%d/%d %s:%s\n",
	       test->test_num, test->subtest_num,
	       test->subtest_name, sub_error_cnt ? "FAIL" : "OK");
}