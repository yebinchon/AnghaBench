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
struct isst_pkg_ctdp_level_info {int cpu_count; int /*<<< orphan*/  core_cpumask; int /*<<< orphan*/  core_cpumask_size; } ;

/* Variables and functions */
 int /*<<< orphan*/  CONFIG_TDP ; 
 int /*<<< orphan*/  CONFIG_TDP_GET_CORE_MASK ; 
 int /*<<< orphan*/  FUNC0 (char*,int,int,int,unsigned int) ; 
 int FUNC1 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,unsigned int*) ; 
 int /*<<< orphan*/  FUNC2 (int,unsigned long long,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 

int FUNC3(int cpu, int config_index,
			   struct isst_pkg_ctdp_level_info *ctdp_level)
{
	unsigned int resp;
	int i, ret;

	ctdp_level->cpu_count = 0;
	for (i = 0; i < 2; ++i) {
		unsigned long long mask;
		int cpu_count = 0;

		ret = FUNC1(cpu, CONFIG_TDP,
					     CONFIG_TDP_GET_CORE_MASK, 0,
					     (i << 8) | config_index, &resp);
		if (ret)
			return ret;

		FUNC0(
			"cpu:%d ctdp:%d mask:%d CONFIG_TDP_GET_CORE_MASK resp:%x\n",
			cpu, config_index, i, resp);

		mask = (unsigned long long)resp << (32 * i);
		FUNC2(cpu, mask,
						 ctdp_level->core_cpumask_size,
						 ctdp_level->core_cpumask,
						 &cpu_count);
		ctdp_level->cpu_count += cpu_count;
		FUNC0("cpu:%d ctdp:%d mask:%d cpu count:%d\n", cpu,
			     config_index, i, ctdp_level->cpu_count);
	}

	return 0;
}