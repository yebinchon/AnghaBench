#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  cpu_set_t ;
struct TYPE_2__ {int pkg_id; int die_id; int punit_cpu_core; } ;

/* Variables and functions */
 unsigned long long FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,size_t,int /*<<< orphan*/ *) ; 
 TYPE_1__* cpu_map ; 
 int FUNC3 (int) ; 
 int FUNC4 (int) ; 
 int /*<<< orphan*/  present_cpumask ; 
 int /*<<< orphan*/  present_cpumask_size ; 
 int topo_max_cpus ; 

void FUNC5(int cpu, unsigned long long core_mask,
				      size_t core_cpumask_size,
				      cpu_set_t *core_cpumask, int *cpu_cnt)
{
	int i, cnt = 0;
	int die_id, pkg_id;

	*cpu_cnt = 0;
	die_id = FUNC3(cpu);
	pkg_id = FUNC4(cpu);

	for (i = 0; i < 64; ++i) {
		if (core_mask & FUNC0(i)) {
			int j;

			for (j = 0; j < topo_max_cpus; ++j) {
				if (!FUNC1(j, present_cpumask_size, present_cpumask))
					continue;

				if (cpu_map[j].pkg_id == pkg_id &&
				    cpu_map[j].die_id == die_id &&
				    cpu_map[j].punit_cpu_core == i) {
					FUNC2(j, core_cpumask_size,
						  core_cpumask);
					++cnt;
				}
			}
		}
	}

	*cpu_cnt = cnt;
}