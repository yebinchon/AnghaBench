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
struct cpufreq_policy {struct cpufreq_policy* governor; void* max; void* min; } ;

/* Variables and functions */
 int /*<<< orphan*/  SCALING_GOVERNOR ; 
 int /*<<< orphan*/  SCALING_MAX_FREQ ; 
 int /*<<< orphan*/  SCALING_MIN_FREQ ; 
 int /*<<< orphan*/  FUNC0 (struct cpufreq_policy*) ; 
 struct cpufreq_policy* FUNC1 (int) ; 
 struct cpufreq_policy* FUNC2 (unsigned int,int /*<<< orphan*/ ) ; 
 void* FUNC3 (unsigned int,int /*<<< orphan*/ ) ; 

struct cpufreq_policy *FUNC4(unsigned int cpu)
{
	struct cpufreq_policy *policy;

	policy = FUNC1(sizeof(struct cpufreq_policy));
	if (!policy)
		return NULL;

	policy->governor = FUNC2(cpu, SCALING_GOVERNOR);
	if (!policy->governor) {
		FUNC0(policy);
		return NULL;
	}
	policy->min = FUNC3(cpu, SCALING_MIN_FREQ);
	policy->max = FUNC3(cpu, SCALING_MAX_FREQ);
	if ((!policy->min) || (!policy->max)) {
		FUNC0(policy->governor);
		FUNC0(policy);
		return NULL;
	}

	return policy;
}