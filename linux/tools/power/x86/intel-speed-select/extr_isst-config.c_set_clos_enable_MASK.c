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
 scalar_t__ FUNC0 () ; 
 int /*<<< orphan*/  enable_clos_qos_config ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ max_target_cpus ; 
 int /*<<< orphan*/  outf ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static void FUNC7(void)
{
	int status = 1;

	if (cmd_help) {
		FUNC4(stderr, "Enable core-power for a package/die\n");
		FUNC4(stderr,
			"\tClos Enable: Specify priority type with [--priority|-p]\n");
		FUNC4(stderr, "\t\t 0: Proportional, 1: Ordered\n");
		FUNC1(0);
	}

	if (FUNC0()) {
		FUNC4(stderr,
			"cpufreq subsystem and core-power enable will interfere with each other!\n");
	}

	FUNC6(outf);
	if (max_target_cpus)
		FUNC3(enable_clos_qos_config, NULL,
						  NULL, NULL, &status);
	else
		FUNC2(enable_clos_qos_config, NULL,
					       NULL, NULL, &status);
	FUNC5(outf);
}