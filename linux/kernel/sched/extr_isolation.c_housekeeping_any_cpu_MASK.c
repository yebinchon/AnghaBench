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
typedef  enum hk_flags { ____Placeholder_hk_flags } hk_flags ;

/* Variables and functions */
 int /*<<< orphan*/  cpu_online_mask ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int housekeeping_flags ; 
 int /*<<< orphan*/  housekeeping_mask ; 
 int /*<<< orphan*/  housekeeping_overridden ; 
 int nr_cpu_ids ; 
 int FUNC1 (int /*<<< orphan*/ ,int) ; 
 int FUNC2 () ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 

int FUNC4(enum hk_flags flags)
{
	int cpu;

	if (FUNC3(&housekeeping_overridden)) {
		if (housekeeping_flags & flags) {
			cpu = FUNC1(housekeeping_mask, FUNC2());
			if (cpu < nr_cpu_ids)
				return cpu;

			return FUNC0(housekeeping_mask, cpu_online_mask);
		}
	}
	return FUNC2();
}