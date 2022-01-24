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
 int NHM_CSTATE_COUNT ; 
 int TSC ; 
 int base_cpu ; 
 int cpu_count ; 
 unsigned long long** current_count ; 
 int /*<<< orphan*/  FUNC0 (char*,unsigned long long) ; 
 int* is_valid ; 
 int /*<<< orphan*/  FUNC1 (int,unsigned long long*,int) ; 
 unsigned long long tsc_at_measure_end ; 

__attribute__((used)) static int FUNC2(void)
{
	unsigned long long val;
	unsigned long long dbg;
	int num, cpu;

	FUNC1(TSC, &tsc_at_measure_end, base_cpu);

	for (num = 0; num < NHM_CSTATE_COUNT; num++) {
		for (cpu = 0; cpu < cpu_count; cpu++) {
			is_valid[cpu] = !FUNC1(num, &val, cpu);
			current_count[num][cpu] = val;
		}
	}
	FUNC1(TSC, &dbg, base_cpu);
	FUNC0("TSC diff: %llu\n", dbg - tsc_at_measure_end);

	return 0;
}