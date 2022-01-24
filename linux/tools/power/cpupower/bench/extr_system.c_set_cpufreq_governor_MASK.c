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
 scalar_t__ FUNC0 (unsigned int,char*) ; 
 int FUNC1 (unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  stderr ; 

int FUNC5(char *governor, unsigned int cpu)
{

	FUNC2("set %s as cpufreq governor\n", governor);

	if (FUNC1(cpu) != 1) {
		FUNC4("cpufreq_cpu_exists");
		FUNC3(stderr, "error: cpu %u does not exist\n", cpu);
		return -1;
	}

	if (FUNC0(cpu, governor) != 0) {
		FUNC4("cpufreq_modify_policy_governor");
		FUNC3(stderr, "error: unable to set %s governor\n", governor);
		return -1;
	}

	return 0;
}