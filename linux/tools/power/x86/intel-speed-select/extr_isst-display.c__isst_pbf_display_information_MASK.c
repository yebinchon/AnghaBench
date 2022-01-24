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
struct isst_pbf_info {int p1_high; int p1_low; int t_prochot; int tdp; int /*<<< orphan*/  core_cpumask; int /*<<< orphan*/  core_cpumask_size; } ;
typedef  int /*<<< orphan*/  header ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int DISP_FREQ_MULTIPLIER ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,char*,...) ; 

__attribute__((used)) static void FUNC4(int cpu, FILE *outf, int level,
					  struct isst_pbf_info *pbf_info,
					  int disp_level)
{
	char header[256];
	char value[256];

	FUNC3(header, sizeof(header), "speed-select-base-freq");
	FUNC0(outf, disp_level, header, NULL);

	FUNC3(header, sizeof(header), "high-priority-base-frequency(MHz)");
	FUNC3(value, sizeof(value), "%d",
		 pbf_info->p1_high * DISP_FREQ_MULTIPLIER);
	FUNC0(outf, disp_level + 1, header, value);

	FUNC3(header, sizeof(header), "high-priority-cpu-mask");
	FUNC2(sizeof(value), value, pbf_info->core_cpumask_size,
		     pbf_info->core_cpumask);
	FUNC0(outf, disp_level + 1, header, value);

	FUNC3(header, sizeof(header), "high-priority-cpu-list");
	FUNC1(sizeof(value), value,
		     pbf_info->core_cpumask_size,
		     pbf_info->core_cpumask);
	FUNC0(outf, disp_level + 1, header, value);

	FUNC3(header, sizeof(header), "low-priority-base-frequency(MHz)");
	FUNC3(value, sizeof(value), "%d",
		 pbf_info->p1_low * DISP_FREQ_MULTIPLIER);
	FUNC0(outf, disp_level + 1, header, value);

	FUNC3(header, sizeof(header), "tjunction-temperature(C)");
	FUNC3(value, sizeof(value), "%d", pbf_info->t_prochot);
	FUNC0(outf, disp_level + 1, header, value);

	FUNC3(header, sizeof(header), "thermal-design-power(W)");
	FUNC3(value, sizeof(value), "%d", pbf_info->tdp);
	FUNC0(outf, disp_level + 1, header, value);
}