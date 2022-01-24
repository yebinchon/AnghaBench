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

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * tests ; 

__attribute__((used)) static int FUNC3(void)
{
	int passes = 0;
	int fails = 0;
	int i;

	for (i = 0; i < FUNC0(tests); ++i) {
		if (FUNC2(&tests[i]))
			++fails;
		else
			++passes;
	}
	FUNC1("Summary: %d PASSED, %d FAILED\n", passes, fails);
	return fails ? -1 : 0;
}