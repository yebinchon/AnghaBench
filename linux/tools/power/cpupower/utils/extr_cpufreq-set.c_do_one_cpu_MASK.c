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
 int FUNC0 (unsigned int,int /*<<< orphan*/ ) ; 
 int FUNC1 (unsigned int,int /*<<< orphan*/ ) ; 
 int FUNC2 (unsigned int,int /*<<< orphan*/ ) ; 
 int FUNC3 (unsigned int,unsigned long) ; 
 int FUNC4 (unsigned int,struct cpufreq_policy*) ; 

__attribute__((used)) static int FUNC5(unsigned int cpu, struct cpufreq_policy *new_pol,
		unsigned long freq, unsigned int pc)
{
	switch (pc) {
	case 0:
		return FUNC3(cpu, freq);

	case 1:
		/* if only one value of a policy is to be changed, we can
		 * use a "fast path".
		 */
		if (new_pol->min)
			return FUNC2(cpu, new_pol->min);
		else if (new_pol->max)
			return FUNC1(cpu, new_pol->max);
		else if (new_pol->governor)
			return FUNC0(cpu,
							new_pol->governor);

	default:
		/* slow path */
		return FUNC4(cpu, new_pol);
	}
}