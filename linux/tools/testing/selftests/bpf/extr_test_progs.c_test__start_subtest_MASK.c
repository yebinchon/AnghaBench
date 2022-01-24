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
struct prog_test_def {char const* subtest_name; int subtest_num; int /*<<< orphan*/  error_cnt; int /*<<< orphan*/  old_error_cnt; } ;
struct TYPE_2__ {struct prog_test_def* test; int /*<<< orphan*/  subtest_selector; int /*<<< orphan*/  stderr; } ;

/* Variables and functions */
 TYPE_1__ env ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,char const*) ; 
 int /*<<< orphan*/  FUNC2 () ; 

bool FUNC3(const char *name)
{
	struct prog_test_def *test = env.test;

	if (test->subtest_name) {
		FUNC2();
		test->subtest_name = NULL;
	}

	test->subtest_num++;

	if (!name || !name[0]) {
		FUNC0(env.stderr,
			"Subtest #%d didn't provide sub-test name!\n",
			test->subtest_num);
		return false;
	}

	if (!FUNC1(&env.subtest_selector, test->subtest_num, name))
		return false;

	test->subtest_name = name;
	env.test->old_error_cnt = env.test->error_cnt;

	return true;
}