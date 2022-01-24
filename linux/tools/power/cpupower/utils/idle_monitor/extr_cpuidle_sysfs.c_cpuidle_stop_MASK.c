#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct timespec {int dummy; } ;
struct TYPE_2__ {int hw_states_num; } ;

/* Variables and functions */
 int /*<<< orphan*/  CLOCK_REALTIME ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct timespec*) ; 
 int cpu_count ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 
 TYPE_1__ cpuidle_sysfs_monitor ; 
 int /*<<< orphan*/ ** current_count ; 
 int /*<<< orphan*/  FUNC2 (char*,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ ** previous_count ; 
 int /*<<< orphan*/  start_time ; 
 int /*<<< orphan*/  timediff ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct timespec) ; 

__attribute__((used)) static int FUNC4(void)
{
	int cpu, state;
	struct timespec end_time;
	FUNC0(CLOCK_REALTIME, &end_time);
	timediff = FUNC3(start_time, end_time);

	for (cpu = 0; cpu < cpu_count; cpu++) {
		for (state = 0; state < cpuidle_sysfs_monitor.hw_states_num;
		     state++) {
			current_count[cpu][state] =
				FUNC1(cpu, state);
			FUNC2("CPU %d - State: %d - Val: %llu\n",
			       cpu, state, previous_count[cpu][state]);
		}
	};
	return 0;
}