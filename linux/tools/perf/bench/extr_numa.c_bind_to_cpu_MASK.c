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
 TYPE_2__* g ; 
 int FUNC3 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static cpu_set_t FUNC5(int target_cpu)
{
	cpu_set_t orig_mask, mask;
	int ret;

	ret = FUNC3(0, sizeof(orig_mask), &orig_mask);
	FUNC0(ret);

	FUNC2(&mask);

	if (target_cpu == -1) {
		int cpu;

		for (cpu = 0; cpu < g->p.nr_cpus; cpu++)
			FUNC1(cpu, &mask);
	} else {
		FUNC0(target_cpu < 0 || target_cpu >= g->p.nr_cpus);
		FUNC1(target_cpu, &mask);
	}

	ret = FUNC4(0, sizeof(mask), &mask);
	FUNC0(ret);

	return orig_mask;
}