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
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (char*,unsigned int,unsigned int) ; 

__attribute__((used)) static inline int FUNC2(unsigned int total_tests, unsigned int failed_tests)
{
	if (failed_tests == 0)
		FUNC0("all %u tests passed\n", total_tests);
	else
		FUNC1("failed %u out of %u tests\n", failed_tests, total_tests);

	return failed_tests ? -EINVAL : 0;
}