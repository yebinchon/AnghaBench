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
 int /*<<< orphan*/  FUNC0 (char*) ; 

__attribute__((used)) static void FUNC1(void)
{
	FUNC0("perf-profile:\tAn architectural mechanism that allows multiple optimized \n\
		performance profiles per system via static and/or dynamic\n\
		adjustment of core count, workload, Tjmax, and\n\
		TDP, etc.\n");
	FUNC0("\nCommands : For feature=perf-profile\n");
	FUNC0("\tinfo\n");
	FUNC0("\tget-lock-status\n");
	FUNC0("\tget-config-levels\n");
	FUNC0("\tget-config-version\n");
	FUNC0("\tget-config-enabled\n");
	FUNC0("\tget-config-current-level\n");
	FUNC0("\tset-config-level\n");
}