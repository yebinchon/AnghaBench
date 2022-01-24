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
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int,char**) ; 
 scalar_t__ cpu_present_set ; 
 scalar_t__ cpu_selected_set ; 
 int /*<<< orphan*/  cpu_setsize ; 
 scalar_t__ debug ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  enable_hwp_on_cpu ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ has_hwp_request_pkg ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 scalar_t__ pkg_present_set ; 
 scalar_t__ pkg_selected_set ; 
 int /*<<< orphan*/  print_cpu_msrs ; 
 int /*<<< orphan*/  print_pkg_msrs ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 scalar_t__ FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  update_cpu_msrs ; 
 int /*<<< orphan*/  update_epb ; 
 scalar_t__ update_hwp_enable ; 
 int /*<<< orphan*/  update_hwp_request_pkg ; 
 int /*<<< orphan*/  update_sysfs ; 
 int /*<<< orphan*/  update_turbo ; 
 int /*<<< orphan*/  FUNC11 () ; 

int FUNC12(int argc, char **argv)
{
	FUNC10();
	FUNC8();
	FUNC5();

	FUNC1();	/* initial cpuid parse before cmdline */

	FUNC0(argc, argv);

	if (debug)
		FUNC7();

	FUNC6();

	 /* If CPU-set and PKG-set are not initialized, default to all CPUs */
	if ((cpu_selected_set == 0) && (pkg_selected_set == 0))
		cpu_selected_set = cpu_present_set;

	/*
	 * If HWP is being enabled, do it now, so that subsequent operations
	 * that access HWP registers can work.
	 */
	if (update_hwp_enable)
		FUNC2(cpu_setsize, cpu_selected_set, enable_hwp_on_cpu);

	/* If HWP present, but disabled, warn and ignore from here forward */
	FUNC11();

	if (FUNC9())
		return -EINVAL;

	/* display information only, no updates to settings */
	if (!update_epb && !update_turbo && !FUNC4()) {
		if (cpu_selected_set)
			FUNC2(cpu_setsize, cpu_selected_set, print_cpu_msrs);

		if (has_hwp_request_pkg) {
			if (pkg_selected_set == 0)
				pkg_selected_set = pkg_present_set;

			FUNC3(pkg_selected_set, print_pkg_msrs);
		}

		return 0;
	}

	/* update CPU set */
	if (cpu_selected_set) {
		FUNC2(cpu_setsize, cpu_selected_set, update_sysfs);
		FUNC2(cpu_setsize, cpu_selected_set, update_cpu_msrs);
	} else if (pkg_selected_set)
		FUNC3(pkg_selected_set, update_hwp_request_pkg);

	return 0;
}