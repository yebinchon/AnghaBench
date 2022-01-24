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
 int /*<<< orphan*/  MSR_MISC_PWR_MGMT ; 
 int base_cpu ; 
 int /*<<< orphan*/  do_nhm_platform_info ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int,unsigned long long,char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ,unsigned long long*) ; 
 scalar_t__ no_MSR_MISC_PWR_MGMT ; 
 int /*<<< orphan*/  outf ; 

void FUNC2(void)
{
	unsigned long long msr;

	if (!do_nhm_platform_info)
		return;

	if (no_MSR_MISC_PWR_MGMT)
		return;

	if (!FUNC1(base_cpu, MSR_MISC_PWR_MGMT, &msr))
		FUNC0(outf, "cpu%d: MSR_MISC_PWR_MGMT: 0x%08llx (%sable-EIST_Coordination %sable-EPB %sable-OOB)\n",
			base_cpu, msr,
			msr & (1 << 0) ? "DIS" : "EN",
			msr & (1 << 1) ? "EN" : "DIS",
			msr & (1 << 8) ? "EN" : "DIS");
}