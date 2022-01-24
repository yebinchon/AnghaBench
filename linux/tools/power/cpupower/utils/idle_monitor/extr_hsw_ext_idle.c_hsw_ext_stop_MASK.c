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
 int HSW_EXT_CSTATE_COUNT ; 
 int TSC ; 
 int base_cpu ; 
 int cpu_count ; 
 unsigned long long** current_count ; 
 int /*<<< orphan*/  FUNC0 (int,unsigned long long*,int) ; 
 int* is_valid ; 
 unsigned long long tsc_at_measure_end ; 

__attribute__((used)) static int FUNC1(void)
{
	unsigned long long val;
	int num, cpu;

	FUNC0(TSC, &tsc_at_measure_end, base_cpu);

	for (num = 0; num < HSW_EXT_CSTATE_COUNT; num++) {
		for (cpu = 0; cpu < cpu_count; cpu++) {
			is_valid[cpu] = !FUNC0(num, &val, cpu);
			current_count[num][cpu] = val;
		}
	}
	return 0;
}