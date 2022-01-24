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

/* Variables and functions */
 int /*<<< orphan*/  CONFIG_TDP ; 
 int /*<<< orphan*/  CONFIG_TDP_SET_LEVEL ; 
 int FUNC0 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,unsigned int*) ; 
 int FUNC1 (int,int) ; 

int FUNC2(int cpu, int tdp_level)
{
	unsigned int resp;
	int ret;

	ret = FUNC0(cpu, CONFIG_TDP, CONFIG_TDP_SET_LEVEL, 0,
				     tdp_level, &resp);
	if (ret)
		return FUNC1(cpu, tdp_level);

	return 0;
}