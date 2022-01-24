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
 int /*<<< orphan*/ * FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * cpu_present_set ; 
 int /*<<< orphan*/  cpu_setsize ; 
 int /*<<< orphan*/  FUNC3 (int,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mark_cpu_present ; 
 scalar_t__ max_cpu_num ; 
 int /*<<< orphan*/  set_max_cpu_pkg_num ; 

void FUNC5(void)
{
	FUNC4(set_max_cpu_pkg_num);

	cpu_setsize = FUNC1((max_cpu_num + 1));

	cpu_present_set = FUNC0((max_cpu_num + 1));
	if (cpu_present_set == NULL)
		FUNC3(3, "CPU_ALLOC");
	FUNC2(cpu_setsize, cpu_present_set);
	FUNC4(mark_cpu_present);
}