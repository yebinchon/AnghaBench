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
struct cpufreq_policy {char* governor; int /*<<< orphan*/  max; int /*<<< orphan*/  min; } ;

/* Variables and functions */
 int EINVAL ; 
 char* FUNC0 (char*) ; 
 struct cpufreq_policy* FUNC1 (unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (struct cpufreq_policy*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 

__attribute__((used)) static int FUNC5(unsigned int cpu)
{
	struct cpufreq_policy *policy = FUNC1(cpu);
	if (!policy) {
		FUNC4(FUNC0("  Unable to determine current policy\n"));
		return -EINVAL;
	}
	FUNC4(FUNC0("  current policy: frequency should be within "));
	FUNC3(policy->min);
	FUNC4(FUNC0(" and "));
	FUNC3(policy->max);

	FUNC4(".\n                  ");
	FUNC4(FUNC0("The governor \"%s\" may decide which speed to use\n"
	       "                  within this range.\n"),
	       policy->governor);
	FUNC2(policy);
	return 0;
}