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
struct cpumask {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,struct cpumask*) ; 
 int FUNC1 (struct cpumask*) ; 
 int FUNC2 (int,struct cpumask const*) ; 
 int /*<<< orphan*/  FUNC3 (int,struct cpumask*) ; 
 int /*<<< orphan*/  FUNC4 (int,struct cpumask*) ; 
 int nr_cpu_ids ; 
 struct cpumask* FUNC5 (int) ; 

__attribute__((used)) static void FUNC6(struct cpumask *irqmsk, struct cpumask *nmsk,
				unsigned int cpus_per_vec)
{
	const struct cpumask *siblmsk;
	int cpu, sibl;

	for ( ; cpus_per_vec > 0; ) {
		cpu = FUNC1(nmsk);

		/* Should not happen, but I'm too lazy to think about it */
		if (cpu >= nr_cpu_ids)
			return;

		FUNC0(cpu, nmsk);
		FUNC3(cpu, irqmsk);
		cpus_per_vec--;

		/* If the cpu has siblings, use them first */
		siblmsk = FUNC5(cpu);
		for (sibl = -1; cpus_per_vec > 0; ) {
			sibl = FUNC2(sibl, siblmsk);
			if (sibl >= nr_cpu_ids)
				break;
			if (!FUNC4(sibl, nmsk))
				continue;
			FUNC3(sibl, irqmsk);
			cpus_per_vec--;
		}
	}
}