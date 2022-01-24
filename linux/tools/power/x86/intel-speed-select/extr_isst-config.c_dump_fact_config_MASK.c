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
 scalar_t__ cmd_help ; 
 int /*<<< orphan*/  dump_fact_config_for_cpu ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ max_target_cpus ; 
 int /*<<< orphan*/  outf ; 
 int /*<<< orphan*/  stderr ; 
 int tdp_level ; 

__attribute__((used)) static void FUNC6(void)
{
	if (cmd_help) {
		FUNC3(stderr,
			"Print complete Intel Speed Select Technology turbo frequency configuration for a TDP level. Other arguments are optional.\n");
		FUNC3(stderr,
			"\tArguments: -l|--level : Specify tdp level\n");
		FUNC3(stderr,
			"\tArguments: -b|--bucket : Bucket index to dump\n");
		FUNC3(stderr,
			"\tArguments: -r|--trl-type : Specify trl type: sse|avx2|avx512\n");
		FUNC0(0);
	}

	if (tdp_level == 0xff) {
		FUNC3(outf, "Invalid command: specify tdp_level\n");
		FUNC0(1);
	}

	FUNC5(outf);
	if (max_target_cpus)
		FUNC2(dump_fact_config_for_cpu,
						  NULL, NULL, NULL, NULL);
	else
		FUNC1(dump_fact_config_for_cpu, NULL,
					       NULL, NULL, NULL);
	FUNC4(outf);
}