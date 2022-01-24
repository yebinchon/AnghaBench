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
 int /*<<< orphan*/  MSR_IA32_POWER_CTL ; 
 int /*<<< orphan*/  MSR_PLATFORM_INFO ; 
 int base_cpu ; 
 unsigned int bclk ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int,unsigned long long,...) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ,unsigned long long*) ; 
 int /*<<< orphan*/  outf ; 

__attribute__((used)) static void
FUNC2(void)
{
	unsigned long long msr;
	unsigned int ratio;

	FUNC1(base_cpu, MSR_PLATFORM_INFO, &msr);

	FUNC0(outf, "cpu%d: MSR_PLATFORM_INFO: 0x%08llx\n", base_cpu, msr);

	ratio = (msr >> 40) & 0xFF;
	FUNC0(outf, "%d * %.1llu = %.1u MHz max efficiency frequency\n",
		ratio, bclk, ratio * bclk);

	ratio = (msr >> 8) & 0xFF;
	FUNC0(outf, "%d * %.1llu = %.1u MHz base frequency\n",
		ratio, bclk, ratio * bclk);

	FUNC1(base_cpu, MSR_IA32_POWER_CTL, &msr);
	FUNC0(outf, "cpu%d: MSR_IA32_POWER_CTL: 0x%08llx (C1E auto-promotion: %sabled)\n",
		base_cpu, msr, msr & 0x2 ? "EN" : "DIS");

	return;
}