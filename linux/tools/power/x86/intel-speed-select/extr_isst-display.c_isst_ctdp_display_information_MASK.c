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
typedef  int /*<<< orphan*/  value ;
struct isst_pkg_ctdp_level_info {int level; int tdp_ratio; int pkg_tdp; int t_proc_hot; int buckets_info; int* trl_sse_active_cores; int* trl_avx_active_cores; int* trl_avx_512_active_cores; int /*<<< orphan*/  fact_info; scalar_t__ fact_support; int /*<<< orphan*/  pbf_info; scalar_t__ pbf_support; scalar_t__ pbf_enabled; scalar_t__ fact_enabled; int /*<<< orphan*/  core_cpumask; int /*<<< orphan*/  core_cpumask_size; int /*<<< orphan*/  processed; } ;
struct isst_pkg_ctdp {int levels; struct isst_pkg_ctdp_level_info* ctdp_level; } ;
typedef  int /*<<< orphan*/  header ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int DISP_FREQ_MULTIPLIER ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ *,int,int,int,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,char*,char*) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char*,int,char*,...) ; 

void FUNC9(int cpu, FILE *outf, int tdp_level,
				   struct isst_pkg_ctdp *pkg_dev)
{
	char header[256];
	char value[256];
	int i, base_level = 1;

	FUNC5(cpu, outf);

	for (i = 0; i <= pkg_dev->levels; ++i) {
		struct isst_pkg_ctdp_level_info *ctdp_level;
		int j;

		ctdp_level = &pkg_dev->ctdp_level[i];
		if (!ctdp_level->processed)
			continue;

		FUNC8(header, sizeof(header), "perf-profile-level-%d",
			 ctdp_level->level);
		FUNC2(outf, base_level + 3, header, NULL);

		FUNC8(header, sizeof(header), "cpu-count");
		j = FUNC3(FUNC4(cpu),
				  FUNC4(cpu));
		FUNC8(value, sizeof(value), "%d", j);
		FUNC2(outf, base_level + 4, header, value);

		FUNC8(header, sizeof(header), "enable-cpu-mask");
		FUNC7(sizeof(value), value,
			     ctdp_level->core_cpumask_size,
			     ctdp_level->core_cpumask);
		FUNC2(outf, base_level + 4, header, value);

		FUNC8(header, sizeof(header), "enable-cpu-list");
		FUNC6(sizeof(value), value,
			     ctdp_level->core_cpumask_size,
			     ctdp_level->core_cpumask);
		FUNC2(outf, base_level + 4, header, value);

		FUNC8(header, sizeof(header), "thermal-design-power-ratio");
		FUNC8(value, sizeof(value), "%d", ctdp_level->tdp_ratio);
		FUNC2(outf, base_level + 4, header, value);

		FUNC8(header, sizeof(header), "base-frequency(MHz)");
		FUNC8(value, sizeof(value), "%d",
			 ctdp_level->tdp_ratio * DISP_FREQ_MULTIPLIER);
		FUNC2(outf, base_level + 4, header, value);

		FUNC8(header, sizeof(header),
			 "speed-select-turbo-freq");
		if (ctdp_level->fact_support) {
			if (ctdp_level->fact_enabled)
				FUNC8(value, sizeof(value), "enabled");
			else
				FUNC8(value, sizeof(value), "disabled");
		} else
			FUNC8(value, sizeof(value), "unsupported");
		FUNC2(outf, base_level + 4, header, value);

		FUNC8(header, sizeof(header),
			 "speed-select-base-freq");
		if (ctdp_level->pbf_support) {
			if (ctdp_level->pbf_enabled)
				FUNC8(value, sizeof(value), "enabled");
			else
				FUNC8(value, sizeof(value), "disabled");
		} else
			FUNC8(value, sizeof(value), "unsupported");
		FUNC2(outf, base_level + 4, header, value);

		FUNC8(header, sizeof(header), "thermal-design-power(W)");
		FUNC8(value, sizeof(value), "%d", ctdp_level->pkg_tdp);
		FUNC2(outf, base_level + 4, header, value);

		FUNC8(header, sizeof(header), "tjunction-max(C)");
		FUNC8(value, sizeof(value), "%d", ctdp_level->t_proc_hot);
		FUNC2(outf, base_level + 4, header, value);

		FUNC8(header, sizeof(header), "turbo-ratio-limits-sse");
		FUNC2(outf, base_level + 4, header, NULL);
		for (j = 0; j < 8; ++j) {
			FUNC8(header, sizeof(header), "bucket-%d", j);
			FUNC2(outf, base_level + 5, header, NULL);

			FUNC8(header, sizeof(header), "core-count");
			FUNC8(value, sizeof(value), "%llu", (ctdp_level->buckets_info >> (j * 8)) & 0xff);
			FUNC2(outf, base_level + 6, header, value);

			FUNC8(header, sizeof(header),
				"max-turbo-frequency(MHz)");
			FUNC8(value, sizeof(value), "%d",
				 ctdp_level->trl_sse_active_cores[j] *
				  DISP_FREQ_MULTIPLIER);
			FUNC2(outf, base_level + 6, header, value);
		}
		FUNC8(header, sizeof(header), "turbo-ratio-limits-avx");
		FUNC2(outf, base_level + 4, header, NULL);
		for (j = 0; j < 8; ++j) {
			FUNC8(header, sizeof(header), "bucket-%d", j);
			FUNC2(outf, base_level + 5, header, NULL);

			FUNC8(header, sizeof(header), "core-count");
			FUNC8(value, sizeof(value), "%llu", (ctdp_level->buckets_info >> (j * 8)) & 0xff);
			FUNC2(outf, base_level + 6, header, value);

			FUNC8(header, sizeof(header),
				"max-turbo-frequency(MHz)");
			FUNC8(value, sizeof(value), "%d",
				 ctdp_level->trl_avx_active_cores[j] *
				  DISP_FREQ_MULTIPLIER);
			FUNC2(outf, base_level + 6, header, value);
		}

		FUNC8(header, sizeof(header), "turbo-ratio-limits-avx512");
		FUNC2(outf, base_level + 4, header, NULL);
		for (j = 0; j < 8; ++j) {
			FUNC8(header, sizeof(header), "bucket-%d", j);
			FUNC2(outf, base_level + 5, header, NULL);

			FUNC8(header, sizeof(header), "core-count");
			FUNC8(value, sizeof(value), "%llu", (ctdp_level->buckets_info >> (j * 8)) & 0xff);
			FUNC2(outf, base_level + 6, header, value);

			FUNC8(header, sizeof(header),
				"max-turbo-frequency(MHz)");
			FUNC8(value, sizeof(value), "%d",
				 ctdp_level->trl_avx_512_active_cores[j] *
				  DISP_FREQ_MULTIPLIER);
			FUNC2(outf, base_level + 6, header, value);
		}
		if (ctdp_level->pbf_support)
			FUNC1(cpu, outf, i,
						      &ctdp_level->pbf_info,
						      base_level + 4);
		if (ctdp_level->fact_support)
			FUNC0(cpu, outf, i, 0xff, 0xff,
						       &ctdp_level->fact_info,
						       base_level + 4);
	}

	FUNC2(outf, 1, NULL, NULL);
}