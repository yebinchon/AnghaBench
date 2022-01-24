#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct test_parman {int /*<<< orphan*/  run_budget; int /*<<< orphan*/  parman; } ;
struct parman_ops {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 struct test_parman* FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  TEST_PARMAN_BASE_COUNT ; 
 int /*<<< orphan*/  TEST_PARMAN_RUN_BUDGET ; 
 int /*<<< orphan*/  FUNC1 (struct test_parman*) ; 
 struct test_parman* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct parman_ops const*,struct test_parman*) ; 
 int /*<<< orphan*/  FUNC4 (struct test_parman*) ; 
 int /*<<< orphan*/  FUNC5 (struct test_parman*) ; 
 int FUNC6 (struct test_parman*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct test_parman*) ; 

__attribute__((used)) static struct test_parman *FUNC8(const struct parman_ops *ops)
{
	struct test_parman *test_parman;
	int err;

	test_parman = FUNC2(sizeof(*test_parman), GFP_KERNEL);
	if (!test_parman)
		return FUNC0(-ENOMEM);
	err = FUNC6(test_parman, TEST_PARMAN_BASE_COUNT);
	if (err)
		goto err_resize;
	test_parman->parman = FUNC3(ops, test_parman);
	if (!test_parman->parman) {
		err = -ENOMEM;
		goto err_parman_create;
	}
	FUNC7(test_parman);
	FUNC5(test_parman);
	FUNC4(test_parman);
	test_parman->run_budget = TEST_PARMAN_RUN_BUDGET;
	return test_parman;

err_parman_create:
	FUNC6(test_parman, 0);
err_resize:
	FUNC1(test_parman);
	return FUNC0(err);
}