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
 int AMD_FAM14H_STATE_NUM ; 
 int /*<<< orphan*/  CLOCK_REALTIME ; 
 int /*<<< orphan*/ * amd_fam14h_cstates ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int cpu_count ; 
 int /*<<< orphan*/  dbg_time ; 
 int /*<<< orphan*/  dbg_timediff ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  start_time ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(void)
{
	int num, cpu;
	FUNC1(CLOCK_REALTIME, &start_time);
	for (num = 0; num < AMD_FAM14H_STATE_NUM; num++) {
		for (cpu = 0; cpu < cpu_count; cpu++)
			FUNC0(&amd_fam14h_cstates[num], cpu);
	}
#ifdef DEBUG
	clock_gettime(CLOCK_REALTIME, &dbg_time);
	dbg_timediff = timespec_diff_us(start_time, dbg_time);
	dprint("Enabling counters took: %lu us\n",
	       dbg_timediff);
#endif
	return 0;
}