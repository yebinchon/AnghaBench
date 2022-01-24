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
 int /*<<< orphan*/  CLOCK_REALTIME ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int cpu_count ; 
 int /*<<< orphan*/  FUNC1 (char*,unsigned long long) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long long*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  time_end ; 
 unsigned long long tsc_at_measure_end ; 

__attribute__((used)) static int FUNC4(void)
{
	unsigned long long dbg;
	int cpu;

	for (cpu = 0; cpu < cpu_count; cpu++)
		FUNC3(cpu);

	FUNC2(&tsc_at_measure_end);
	FUNC0(CLOCK_REALTIME, &time_end);

	FUNC2(&dbg);
	FUNC1("TSC diff: %llu\n", dbg - tsc_at_measure_end);

	return 0;
}