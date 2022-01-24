#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  orig_mask ;
typedef  int /*<<< orphan*/  mask ;
typedef  int /*<<< orphan*/  cpu_set_t ;
struct TYPE_3__ {int nr_cpus; } ;
struct TYPE_4__ {TYPE_1__ p; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int NUMA_NO_NODE ; 
 TYPE_2__* g ; 
 int FUNC3 () ; 
 int FUNC4 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static cpu_set_t FUNC6(int target_node)
{
	int cpus_per_node = g->p.nr_cpus / FUNC3();
	cpu_set_t orig_mask, mask;
	int cpu;
	int ret;

	FUNC0(cpus_per_node * FUNC3() != g->p.nr_cpus);
	FUNC0(!cpus_per_node);

	ret = FUNC4(0, sizeof(orig_mask), &orig_mask);
	FUNC0(ret);

	FUNC2(&mask);

	if (target_node == NUMA_NO_NODE) {
		for (cpu = 0; cpu < g->p.nr_cpus; cpu++)
			FUNC1(cpu, &mask);
	} else {
		int cpu_start = (target_node + 0) * cpus_per_node;
		int cpu_stop  = (target_node + 1) * cpus_per_node;

		FUNC0(cpu_stop > g->p.nr_cpus);

		for (cpu = cpu_start; cpu < cpu_stop; cpu++)
			FUNC1(cpu, &mask);
	}

	ret = FUNC5(0, sizeof(mask), &mask);
	FUNC0(ret);

	return orig_mask;
}