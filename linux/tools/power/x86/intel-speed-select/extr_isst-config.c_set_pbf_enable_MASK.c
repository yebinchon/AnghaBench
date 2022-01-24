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
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ max_target_cpus ; 
 int /*<<< orphan*/  outf ; 
 int /*<<< orphan*/  set_pbf_for_cpu ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static void FUNC6(void)
{
	int status = 1;

	if (cmd_help) {
		FUNC3(stderr,
			"Enable Intel Speed Select Technology base frequency feature [No command arguments are required]\n");
		FUNC0(0);
	}

	FUNC5(outf);
	if (max_target_cpus)
		FUNC2(set_pbf_for_cpu, NULL, NULL,
						  NULL, &status);
	else
		FUNC1(set_pbf_for_cpu, NULL, NULL,
					       NULL, &status);
	FUNC4(outf);
}