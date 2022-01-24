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
 int /*<<< orphan*/  MSR_CC6_DEMOTION_POLICY_CONFIG ; 
 int /*<<< orphan*/  MSR_MC6_DEMOTION_POLICY_CONFIG ; 
 int base_cpu ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int,unsigned long long,char*) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ,unsigned long long*) ; 
 int /*<<< orphan*/  outf ; 

void FUNC2(void)
{
	unsigned long long msr;

	if (!FUNC1(base_cpu, MSR_CC6_DEMOTION_POLICY_CONFIG, &msr))
		FUNC0(outf, "cpu%d: MSR_CC6_DEMOTION_POLICY_CONFIG: 0x%08llx (%sable-CC6-Demotion)\n",
			base_cpu, msr, msr & (1 << 0) ? "EN" : "DIS");

	if (!FUNC1(base_cpu, MSR_MC6_DEMOTION_POLICY_CONFIG, &msr))
		FUNC0(outf, "cpu%d: MSR_MC6_DEMOTION_POLICY_CONFIG: 0x%08llx (%sable-MC6-Demotion)\n",
			base_cpu, msr, msr & (1 << 0) ? "EN" : "DIS");
}