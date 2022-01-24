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
struct cpufreq_affected_cpus {int cpu; struct cpufreq_affected_cpus* next; } ;

/* Variables and functions */
 int EINVAL ; 
 char* FUNC0 (char*) ; 
 struct cpufreq_affected_cpus* FUNC1 (unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (struct cpufreq_affected_cpus*) ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 

__attribute__((used)) static int FUNC4(unsigned int cpu)
{
	struct cpufreq_affected_cpus *cpus = FUNC1(cpu);

	FUNC3(FUNC0("  CPUs which need to have their frequency coordinated by software: "));
	if (!cpus) {
		FUNC3(FUNC0("Not Available\n"));
		return -EINVAL;
	}

	while (cpus->next) {
		FUNC3("%d ", cpus->cpu);
		cpus = cpus->next;
	}
	FUNC3("%d\n", cpus->cpu);
	FUNC2(cpus);
	return 0;
}