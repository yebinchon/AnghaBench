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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  get_clos_assoc_for_cpu ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  max_target_cpus ; 
 int /*<<< orphan*/  outf ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static void FUNC5(void)
{
	if (cmd_help) {
		FUNC2(stderr, "Get associate clos id to a CPU\n");
		FUNC2(stderr, "\tSpecify targeted cpu id with [--cpu|-c]\n");
		FUNC0(0);
	}

	if (!max_target_cpus) {
		FUNC2(stderr,
			"Invalid target cpu. Specify with [-c|--cpu]\n");
		FUNC0(0);
	}

	FUNC4(outf);
	FUNC1(get_clos_assoc_for_cpu, NULL,
					  NULL, NULL, NULL);
	FUNC3(outf);
}