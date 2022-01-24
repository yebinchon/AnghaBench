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
struct cpufreq_policy {int min; int max; int /*<<< orphan*/  governor; } ;

/* Variables and functions */
 char* FUNC0 (char*) ; 
 unsigned int FUNC1 () ; 
 scalar_t__ FUNC2 (unsigned int,unsigned long*,unsigned long*) ; 
 struct cpufreq_policy* FUNC3 (unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (struct cpufreq_policy*) ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 

__attribute__((used)) static void FUNC6(void)
{
	unsigned int cpu, nr_cpus;
	struct cpufreq_policy *policy;
	unsigned int min_pctg = 0;
	unsigned int max_pctg = 0;
	unsigned long min, max;

	FUNC5(FUNC0("          minimum CPU frequency  -  maximum CPU frequency  -  governor\n"));

	nr_cpus = FUNC1();
	for (cpu = 0; cpu < nr_cpus; cpu++) {
		policy = FUNC3(cpu);
		if (!policy)
			continue;

		if (FUNC2(cpu, &min, &max)) {
			max = 0;
		} else {
			min_pctg = (policy->min * 100) / max;
			max_pctg = (policy->max * 100) / max;
		}
		FUNC5("CPU%3d    %9lu kHz (%3d %%)  -  %9lu kHz (%3d %%)  -  %s\n",
			cpu , policy->min, max ? min_pctg : 0, policy->max,
			max ? max_pctg : 0, policy->governor);

		FUNC4(policy);
	}
}