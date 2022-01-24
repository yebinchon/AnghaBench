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
struct cpufreq_policy {int /*<<< orphan*/  governor; int /*<<< orphan*/  max; int /*<<< orphan*/  min; } ;

/* Variables and functions */
 int EINVAL ; 
 char* FUNC0 (char*) ; 
 struct cpufreq_policy* FUNC1 (unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (struct cpufreq_policy*) ; 
 int FUNC3 (unsigned int,struct cpufreq_policy*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 

__attribute__((used)) static int FUNC5(unsigned int cpu, struct cpufreq_policy *new_pol)
{
	struct cpufreq_policy *cur_pol = FUNC1(cpu);
	int ret;

	if (!cur_pol) {
		FUNC4(FUNC0("wrong, unknown or unhandled CPU?\n"));
		return -EINVAL;
	}

	if (!new_pol->min)
		new_pol->min = cur_pol->min;

	if (!new_pol->max)
		new_pol->max = cur_pol->max;

	if (!new_pol->governor)
		new_pol->governor = cur_pol->governor;

	ret = FUNC3(cpu, new_pol);

	FUNC2(cur_pol);

	return ret;
}