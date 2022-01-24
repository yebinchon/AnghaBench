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
struct cpuidle_monitor {int hw_states_num; int /*<<< orphan*/  name; int /*<<< orphan*/  name_len; } ;
struct TYPE_2__ {int id; int /*<<< orphan*/  get_count_percent; int /*<<< orphan*/  range; int /*<<< orphan*/  desc; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 scalar_t__ CSTATE_DESC_LEN ; 
 scalar_t__ CSTATE_NAME_LEN ; 
 int /*<<< orphan*/  RANGE_THREAD ; 
 int cpu_count ; 
 TYPE_1__* cpuidle_cstates ; 
 int /*<<< orphan*/  cpuidle_get_count_percent ; 
 int FUNC0 (int) ; 
 char* FUNC1 (int,int) ; 
 char* FUNC2 (int,int) ; 
 struct cpuidle_monitor cpuidle_sysfs_monitor ; 
 void** current_count ; 
 int /*<<< orphan*/  FUNC3 (char*,int) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 void* FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 void** previous_count ; 
 int FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*,scalar_t__) ; 

__attribute__((used)) static struct cpuidle_monitor *FUNC10(void)
{
	int num;
	char *tmp;
	int this_cpu;

	this_cpu = FUNC7();

	/* Assume idle state count is the same for all CPUs */
	cpuidle_sysfs_monitor.hw_states_num = FUNC0(this_cpu);

	if (cpuidle_sysfs_monitor.hw_states_num <= 0)
		return NULL;

	for (num = 0; num < cpuidle_sysfs_monitor.hw_states_num; num++) {
		tmp = FUNC2(this_cpu, num);
		if (tmp == NULL)
			continue;

		FUNC6(tmp);
		FUNC3(tmp, num);
		FUNC9(cpuidle_cstates[num].name, tmp, CSTATE_NAME_LEN - 1);
		FUNC4(tmp);

		tmp = FUNC1(this_cpu, num);
		if (tmp == NULL)
			continue;
		FUNC9(cpuidle_cstates[num].desc, tmp,	CSTATE_DESC_LEN - 1);
		FUNC4(tmp);

		cpuidle_cstates[num].range = RANGE_THREAD;
		cpuidle_cstates[num].id = num;
		cpuidle_cstates[num].get_count_percent =
			cpuidle_get_count_percent;
	};

	/* Free this at program termination */
	previous_count = FUNC5(sizeof(long long *) * cpu_count);
	current_count = FUNC5(sizeof(long long *) * cpu_count);
	for (num = 0; num < cpu_count; num++) {
		previous_count[num] = FUNC5(sizeof(long long) *
					cpuidle_sysfs_monitor.hw_states_num);
		current_count[num] = FUNC5(sizeof(long long) *
					cpuidle_sysfs_monitor.hw_states_num);
	}

	cpuidle_sysfs_monitor.name_len = FUNC8(cpuidle_sysfs_monitor.name);
	return &cpuidle_sysfs_monitor;
}