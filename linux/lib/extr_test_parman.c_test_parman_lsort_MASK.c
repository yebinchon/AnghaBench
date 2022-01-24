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
struct test_parman {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct test_parman*) ; 
 int FUNC1 (struct test_parman*) ; 
 int FUNC2 (struct test_parman*,int) ; 
 struct test_parman* FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct test_parman*) ; 
 int /*<<< orphan*/  test_parman_lsort_ops ; 
 int FUNC5 (struct test_parman*) ; 

__attribute__((used)) static int FUNC6(void)
{
	struct test_parman *test_parman;
	int err;

	test_parman = FUNC3(&test_parman_lsort_ops);
	if (FUNC0(test_parman))
		return FUNC1(test_parman);

	err = FUNC5(test_parman);
	if (err)
		goto out;

	err = FUNC2(test_parman, false);
	if (err)
		goto out;
out:
	FUNC4(test_parman);
	return err;
}