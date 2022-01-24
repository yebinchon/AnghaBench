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
 int clos_desired ; 
 int clos_epp ; 
 int clos_max ; 
 scalar_t__ clos_min ; 
 int clos_prop_prio ; 
 scalar_t__ cmd_help ; 
 int current_clos ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ max_target_cpus ; 
 int /*<<< orphan*/  outf ; 
 int /*<<< orphan*/  set_clos_config_for_cpu ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static void FUNC6(void)
{
	if (cmd_help) {
		FUNC3(stderr,
			"Set core-power configuration for one of the four clos ids\n");
		FUNC3(stderr,
			"\tSpecify targeted clos id with [--clos|-c]\n");
		FUNC3(stderr, "\tSpecify clos EPP with [--epp|-e]\n");
		FUNC3(stderr,
			"\tSpecify clos Proportional Priority [--weight|-w]\n");
		FUNC3(stderr, "\tSpecify clos min with [--min|-n]\n");
		FUNC3(stderr, "\tSpecify clos max with [--max|-m]\n");
		FUNC3(stderr, "\tSpecify clos desired with [--desired|-d]\n");
		FUNC0(0);
	}

	if (current_clos < 0 || current_clos > 3) {
		FUNC3(stderr, "Invalid clos id\n");
		FUNC0(0);
	}
	if (clos_epp < 0 || clos_epp > 0x0F) {
		FUNC3(stderr, "clos epp is not specified, default: 0\n");
		clos_epp = 0;
	}
	if (clos_prop_prio < 0 || clos_prop_prio > 0x0F) {
		FUNC3(stderr,
			"clos frequency weight is not specified, default: 0\n");
		clos_prop_prio = 0;
	}
	if (clos_min < 0) {
		FUNC3(stderr, "clos min is not specified, default: 0\n");
		clos_min = 0;
	}
	if (clos_max < 0) {
		FUNC3(stderr, "clos max is not specified, default: 0xff\n");
		clos_max = 0xff;
	}
	if (clos_desired < 0) {
		FUNC3(stderr, "clos desired is not specified, default: 0\n");
		clos_desired = 0x00;
	}

	FUNC5(outf);
	if (max_target_cpus)
		FUNC2(set_clos_config_for_cpu, NULL,
						  NULL, NULL, NULL);
	else
		FUNC1(set_clos_config_for_cpu, NULL,
					       NULL, NULL, NULL);
	FUNC4(outf);
}