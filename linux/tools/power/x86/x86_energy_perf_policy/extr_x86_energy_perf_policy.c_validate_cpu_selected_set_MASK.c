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
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  cpu_present_set ; 
 int /*<<< orphan*/  cpu_selected_set ; 
 int /*<<< orphan*/  cpu_setsize ; 
 int /*<<< orphan*/  FUNC2 (int,char*,...) ; 
 int max_cpu_num ; 

void FUNC3(void)
{
	int cpu;

	if (FUNC0(cpu_setsize, cpu_selected_set) == 0)
		FUNC2(0, "no CPUs requested");

	for (cpu = 0; cpu <= max_cpu_num; ++cpu) {
		if (FUNC1(cpu, cpu_setsize, cpu_selected_set))
			if (!FUNC1(cpu, cpu_setsize, cpu_present_set))
				FUNC2(1, "Requested cpu% is not present", cpu);
	}
}