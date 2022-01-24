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
 int current_clos ; 
 int /*<<< orphan*/  dump_clos_config_for_cpu ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ max_target_cpus ; 
 int /*<<< orphan*/  outf ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static void FUNC6(void)
{
	if (cmd_help) {
		FUNC3(stderr,
			"Print Intel Speed Select Technology core power configuration\n");
		FUNC3(stderr,
			"\tArguments: [-c | --clos]: Specify clos id\n");
		FUNC0(0);
	}
	if (current_clos < 0 || current_clos > 3) {
		FUNC3(stderr, "Invalid clos id\n");
		FUNC0(0);
	}

	FUNC5(outf);
	if (max_target_cpus)
		FUNC2(dump_clos_config_for_cpu,
						  NULL, NULL, NULL, NULL);
	else
		FUNC1(dump_clos_config_for_cpu, NULL,
					       NULL, NULL, NULL);
	FUNC4(outf);
}