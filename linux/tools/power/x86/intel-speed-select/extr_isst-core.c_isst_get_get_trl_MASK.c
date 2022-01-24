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
 int FUNC0 (int) ; 
 int /*<<< orphan*/  CONFIG_TDP ; 
 int /*<<< orphan*/  CONFIG_TDP_GET_TURBO_LIMIT_RATIOS ; 
 unsigned int FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,unsigned int,unsigned int) ; 
 int FUNC3 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int,unsigned int*) ; 

int FUNC4(int cpu, int level, int avx_level, int *trl)
{
	unsigned int req, resp;
	int ret;

	req = level | (avx_level << 16);
	ret = FUNC3(cpu, CONFIG_TDP,
				     CONFIG_TDP_GET_TURBO_LIMIT_RATIOS, 0, req,
				     &resp);
	if (ret)
		return ret;

	FUNC2(
		"cpu:%d CONFIG_TDP_GET_TURBO_LIMIT_RATIOS req:%x resp:%x\n",
		cpu, req, resp);

	trl[0] = resp & FUNC1(7, 0);
	trl[1] = (resp & FUNC1(15, 8)) >> 8;
	trl[2] = (resp & FUNC1(23, 16)) >> 16;
	trl[3] = (resp & FUNC1(31, 24)) >> 24;

	req = level | FUNC0(8) | (avx_level << 16);
	ret = FUNC3(cpu, CONFIG_TDP,
				     CONFIG_TDP_GET_TURBO_LIMIT_RATIOS, 0, req,
				     &resp);
	if (ret)
		return ret;

	FUNC2("cpu:%d CONFIG_TDP_GET_TURBO_LIMIT req:%x resp:%x\n", cpu,
		     req, resp);

	trl[4] = resp & FUNC1(7, 0);
	trl[5] = (resp & FUNC1(15, 8)) >> 8;
	trl[6] = (resp & FUNC1(23, 16)) >> 16;
	trl[7] = (resp & FUNC1(31, 24)) >> 24;

	return 0;
}