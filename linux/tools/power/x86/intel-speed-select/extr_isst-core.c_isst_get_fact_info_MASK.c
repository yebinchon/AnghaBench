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
struct isst_fact_info {unsigned int lp_clipping_ratio_license_sse; unsigned int lp_clipping_ratio_license_avx2; unsigned int lp_clipping_ratio_license_avx512; int /*<<< orphan*/  bucket_info; } ;

/* Variables and functions */
 int /*<<< orphan*/  CONFIG_TDP ; 
 int /*<<< orphan*/  CONFIG_TDP_GET_FACT_LP_CLIPPING_RATIO ; 
 int /*<<< orphan*/  FUNC0 (char*,int,unsigned int) ; 
 int FUNC1 (int,int,int /*<<< orphan*/ ) ; 
 int FUNC2 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,unsigned int*) ; 

int FUNC3(int cpu, int level, struct isst_fact_info *fact_info)
{
	unsigned int resp;
	int ret;

	ret = FUNC2(cpu, CONFIG_TDP,
				     CONFIG_TDP_GET_FACT_LP_CLIPPING_RATIO, 0,
				     level, &resp);
	if (ret)
		return ret;

	FUNC0("cpu:%d CONFIG_TDP_GET_FACT_LP_CLIPPING_RATIO resp:%x\n",
		     cpu, resp);

	fact_info->lp_clipping_ratio_license_sse = resp & 0xff;
	fact_info->lp_clipping_ratio_license_avx2 = (resp >> 8) & 0xff;
	fact_info->lp_clipping_ratio_license_avx512 = (resp >> 16) & 0xff;

	ret = FUNC1(cpu, level, fact_info->bucket_info);

	return ret;
}