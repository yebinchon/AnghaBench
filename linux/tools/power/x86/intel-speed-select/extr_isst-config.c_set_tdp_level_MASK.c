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
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ max_target_cpus ; 
 int /*<<< orphan*/  outf ; 
 int /*<<< orphan*/  set_tdp_level_for_cpu ; 
 int /*<<< orphan*/  stderr ; 
 int tdp_level ; 

__attribute__((used)) static void FUNC6(void)
{
	if (cmd_help) {
		FUNC3(stderr, "Set Config TDP level\n");
		FUNC3(stderr,
			"\t Arguments: -l|--level : Specify tdp level\n");
		FUNC3(stderr,
			"\t Optional Arguments: -o | online : online/offline for the tdp level\n");
		FUNC0(0);
	}

	if (tdp_level == 0xff) {
		FUNC3(outf, "Invalid command: specify tdp_level\n");
		FUNC0(1);
	}
	FUNC5(outf);
	if (max_target_cpus)
		FUNC2(set_tdp_level_for_cpu, NULL,
						  NULL, NULL, NULL);
	else
		FUNC1(set_tdp_level_for_cpu, NULL,
					       NULL, NULL, NULL);
	FUNC4(outf);
}