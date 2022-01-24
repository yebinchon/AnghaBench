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
struct isst_pkg_ctdp_level_info {unsigned int pkg_max_power; unsigned int pkg_min_power; } ;

/* Variables and functions */
 int /*<<< orphan*/  CONFIG_TDP ; 
 int /*<<< orphan*/  CONFIG_TDP_GET_PWR_INFO ; 
 unsigned int FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,int,unsigned int,unsigned int,unsigned int) ; 
 int FUNC2 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,unsigned int*) ; 

int FUNC3(int cpu, int config_index,
		      struct isst_pkg_ctdp_level_info *ctdp_level)
{
	unsigned int resp;
	int ret;

	ret = FUNC2(cpu, CONFIG_TDP, CONFIG_TDP_GET_PWR_INFO,
				     0, config_index, &resp);
	if (ret)
		return ret;

	ctdp_level->pkg_max_power = resp & FUNC0(14, 0);
	ctdp_level->pkg_min_power = (resp & FUNC0(30, 16)) >> 16;

	FUNC1(
		"cpu:%d ctdp:%d CONFIG_TDP_GET_PWR_INFO resp:%x pkg_max_power:%d pkg_min_power:%d\n",
		cpu, config_index, resp, ctdp_level->pkg_max_power,
		ctdp_level->pkg_min_power);

	return 0;
}