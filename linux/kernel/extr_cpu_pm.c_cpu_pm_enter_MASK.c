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
 int /*<<< orphan*/  CPU_PM_ENTER ; 
 int /*<<< orphan*/  CPU_PM_ENTER_FAILED ; 
 int FUNC0 (int /*<<< orphan*/ ,int,int*) ; 

int FUNC1(void)
{
	int nr_calls;
	int ret = 0;

	ret = FUNC0(CPU_PM_ENTER, -1, &nr_calls);
	if (ret)
		/*
		 * Inform listeners (nr_calls - 1) about failure of CPU PM
		 * PM entry who are notified earlier to prepare for it.
		 */
		FUNC0(CPU_PM_ENTER_FAILED, nr_calls - 1, NULL);

	return ret;
}