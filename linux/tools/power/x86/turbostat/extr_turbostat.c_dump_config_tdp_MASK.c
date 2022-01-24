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
typedef  scalar_t__ msr ;

/* Variables and functions */
 int /*<<< orphan*/  MSR_CONFIG_TDP_CONTROL ; 
 int /*<<< orphan*/  MSR_CONFIG_TDP_LEVEL_1 ; 
 int /*<<< orphan*/  MSR_CONFIG_TDP_LEVEL_2 ; 
 int /*<<< orphan*/  MSR_CONFIG_TDP_NOMINAL ; 
 int /*<<< orphan*/  MSR_TURBO_ACTIVATION_RATIO ; 
 int base_cpu ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ,unsigned long long*) ; 
 int /*<<< orphan*/  outf ; 

__attribute__((used)) static void
FUNC2(void)
{
	unsigned long long msr;

	FUNC1(base_cpu, MSR_CONFIG_TDP_NOMINAL, &msr);
	FUNC0(outf, "cpu%d: MSR_CONFIG_TDP_NOMINAL: 0x%08llx", base_cpu, msr);
	FUNC0(outf, " (base_ratio=%d)\n", (unsigned int)msr & 0xFF);

	FUNC1(base_cpu, MSR_CONFIG_TDP_LEVEL_1, &msr);
	FUNC0(outf, "cpu%d: MSR_CONFIG_TDP_LEVEL_1: 0x%08llx (", base_cpu, msr);
	if (msr) {
		FUNC0(outf, "PKG_MIN_PWR_LVL1=%d ", (unsigned int)(msr >> 48) & 0x7FFF);
		FUNC0(outf, "PKG_MAX_PWR_LVL1=%d ", (unsigned int)(msr >> 32) & 0x7FFF);
		FUNC0(outf, "LVL1_RATIO=%d ", (unsigned int)(msr >> 16) & 0xFF);
		FUNC0(outf, "PKG_TDP_LVL1=%d", (unsigned int)(msr) & 0x7FFF);
	}
	FUNC0(outf, ")\n");

	FUNC1(base_cpu, MSR_CONFIG_TDP_LEVEL_2, &msr);
	FUNC0(outf, "cpu%d: MSR_CONFIG_TDP_LEVEL_2: 0x%08llx (", base_cpu, msr);
	if (msr) {
		FUNC0(outf, "PKG_MIN_PWR_LVL2=%d ", (unsigned int)(msr >> 48) & 0x7FFF);
		FUNC0(outf, "PKG_MAX_PWR_LVL2=%d ", (unsigned int)(msr >> 32) & 0x7FFF);
		FUNC0(outf, "LVL2_RATIO=%d ", (unsigned int)(msr >> 16) & 0xFF);
		FUNC0(outf, "PKG_TDP_LVL2=%d", (unsigned int)(msr) & 0x7FFF);
	}
	FUNC0(outf, ")\n");

	FUNC1(base_cpu, MSR_CONFIG_TDP_CONTROL, &msr);
	FUNC0(outf, "cpu%d: MSR_CONFIG_TDP_CONTROL: 0x%08llx (", base_cpu, msr);
	if ((msr) & 0x3)
		FUNC0(outf, "TDP_LEVEL=%d ", (unsigned int)(msr) & 0x3);
	FUNC0(outf, " lock=%d", (unsigned int)(msr >> 31) & 1);
	FUNC0(outf, ")\n");

	FUNC1(base_cpu, MSR_TURBO_ACTIVATION_RATIO, &msr);
	FUNC0(outf, "cpu%d: MSR_TURBO_ACTIVATION_RATIO: 0x%08llx (", base_cpu, msr);
	FUNC0(outf, "MAX_NON_TURBO_RATIO=%d", (unsigned int)(msr) & 0xFF);
	FUNC0(outf, " lock=%d", (unsigned int)(msr >> 31) & 1);
	FUNC0(outf, ")\n");
}