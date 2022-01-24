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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ max_target_cpus ; 
 int /*<<< orphan*/  set_clos_assoc_for_cpu ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static void FUNC3(void)
{
	if (cmd_help) {
		FUNC2(stderr, "Associate a clos id to a CPU\n");
		FUNC2(stderr,
			"\tSpecify targeted clos id with [--clos|-c]\n");
		FUNC0(0);
	}

	if (current_clos < 0 || current_clos > 3) {
		FUNC2(stderr, "Invalid clos id\n");
		FUNC0(0);
	}
	if (max_target_cpus)
		FUNC1(set_clos_assoc_for_cpu, NULL,
						  NULL, NULL, NULL);
	else {
		FUNC2(stderr,
			"Invalid target cpu. Specify with [-c|--cpu]\n");
	}
}