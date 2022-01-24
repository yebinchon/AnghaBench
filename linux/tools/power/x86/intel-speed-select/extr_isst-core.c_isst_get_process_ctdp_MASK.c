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
struct isst_pkg_ctdp_level_info {int processed; int level; int control_cpu; int pbf_found; int /*<<< orphan*/  fact_info; scalar_t__ fact_support; int /*<<< orphan*/  pbf_info; scalar_t__ pbf_support; int /*<<< orphan*/  trl_avx_512_active_cores; int /*<<< orphan*/  trl_avx_active_cores; int /*<<< orphan*/  trl_sse_active_cores; int /*<<< orphan*/  buckets_info; int /*<<< orphan*/  core_cpumask; int /*<<< orphan*/  core_cpumask_size; int /*<<< orphan*/  die_id; int /*<<< orphan*/  pkg_id; } ;
struct isst_pkg_ctdp {int processed; int levels; struct isst_pkg_ctdp_level_info* ctdp_level; int /*<<< orphan*/  current_level; int /*<<< orphan*/  enabled; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,int,...) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int FUNC4 (int,int,struct isst_pkg_ctdp_level_info*) ; 
 int FUNC5 (int,int,struct isst_pkg_ctdp_level_info*) ; 
 int FUNC6 (int,struct isst_pkg_ctdp*) ; 
 int FUNC7 (int,int,int /*<<< orphan*/ *) ; 
 int FUNC8 (int,int,int,int /*<<< orphan*/ ) ; 
 int FUNC9 (int,int,int /*<<< orphan*/ *) ; 
 int FUNC10 (int,int,struct isst_pkg_ctdp_level_info*) ; 
 int FUNC11 (int,int,struct isst_pkg_ctdp_level_info*) ; 
 int FUNC12 (int,int,struct isst_pkg_ctdp_level_info*) ; 
 int FUNC13 (int,int /*<<< orphan*/ *) ; 

int FUNC14(int cpu, int tdp_level, struct isst_pkg_ctdp *pkg_dev)
{
	int i, ret;

	if (pkg_dev->processed)
		return 0;

	ret = FUNC6(cpu, pkg_dev);
	if (ret)
		return ret;

	FUNC1("cpu: %d ctdp enable:%d current level: %d levels:%d\n",
		     cpu, pkg_dev->enabled, pkg_dev->current_level,
		     pkg_dev->levels);

	for (i = 0; i <= pkg_dev->levels; ++i) {
		struct isst_pkg_ctdp_level_info *ctdp_level;

		if (tdp_level != 0xff && i != tdp_level)
			continue;

		FUNC1("cpu:%d Get Information for TDP level:%d\n", cpu,
			     i);
		ctdp_level = &pkg_dev->ctdp_level[i];

		ctdp_level->processed = 1;
		ctdp_level->level = i;
		ctdp_level->control_cpu = cpu;
		ctdp_level->pkg_id = FUNC3(cpu);
		ctdp_level->die_id = FUNC2(cpu);

		ret = FUNC5(cpu, i, ctdp_level);
		if (ret)
			return ret;

		ret = FUNC11(cpu, i, ctdp_level);
		if (ret)
			return ret;

		ret = FUNC10(cpu, i, ctdp_level);
		if (ret)
			return ret;

		ret = FUNC12(cpu, i, ctdp_level);
		if (ret)
			return ret;

		ctdp_level->core_cpumask_size =
			FUNC0(&ctdp_level->core_cpumask);
		ret = FUNC4(cpu, i, ctdp_level);
		if (ret)
			return ret;

		ret = FUNC13(cpu, &ctdp_level->buckets_info);
		if (ret)
			return ret;

		ret = FUNC8(cpu, i, 0,
				       ctdp_level->trl_sse_active_cores);
		if (ret)
			return ret;

		ret = FUNC8(cpu, i, 1,
				       ctdp_level->trl_avx_active_cores);
		if (ret)
			return ret;

		ret = FUNC8(cpu, i, 2,
				       ctdp_level->trl_avx_512_active_cores);
		if (ret)
			return ret;

		if (ctdp_level->pbf_support) {
			ret = FUNC9(cpu, i, &ctdp_level->pbf_info);
			if (!ret)
				ctdp_level->pbf_found = 1;
		}

		if (ctdp_level->fact_support) {
			ret = FUNC7(cpu, i,
						 &ctdp_level->fact_info);
			if (ret)
				return ret;
		}
	}

	pkg_dev->processed = 1;

	return 0;
}