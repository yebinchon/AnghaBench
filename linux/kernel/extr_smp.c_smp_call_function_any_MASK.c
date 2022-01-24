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
typedef  int /*<<< orphan*/  smp_call_func_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  cpu_online_mask ; 
 int /*<<< orphan*/  FUNC1 (unsigned int) ; 
 unsigned int FUNC2 (struct cpumask const*,int /*<<< orphan*/ ) ; 
 unsigned int FUNC3 (struct cpumask const*,struct cpumask const*) ; 
 unsigned int FUNC4 (unsigned int,struct cpumask const*,struct cpumask const*) ; 
 struct cpumask* FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (unsigned int,struct cpumask const*) ; 
 unsigned int FUNC7 () ; 
 unsigned int nr_cpu_ids ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int FUNC9 (unsigned int,int /*<<< orphan*/ ,void*,int) ; 

int FUNC10(const struct cpumask *mask,
			  smp_call_func_t func, void *info, int wait)
{
	unsigned int cpu;
	const struct cpumask *nodemask;
	int ret;

	/* Try for same CPU (cheapest) */
	cpu = FUNC7();
	if (FUNC6(cpu, mask))
		goto call;

	/* Try for same node. */
	nodemask = FUNC5(FUNC1(cpu));
	for (cpu = FUNC3(nodemask, mask); cpu < nr_cpu_ids;
	     cpu = FUNC4(cpu, nodemask, mask)) {
		if (FUNC0(cpu))
			goto call;
	}

	/* Any online will do: smp_call_function_single handles nr_cpu_ids. */
	cpu = FUNC2(mask, cpu_online_mask);
call:
	ret = FUNC9(cpu, func, info, wait);
	FUNC8();
	return ret;
}