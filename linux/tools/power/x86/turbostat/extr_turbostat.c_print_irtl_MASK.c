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
 int /*<<< orphan*/  MSR_PKGC10_IRTL ; 
 int /*<<< orphan*/  MSR_PKGC3_IRTL ; 
 int /*<<< orphan*/  MSR_PKGC6_IRTL ; 
 int /*<<< orphan*/  MSR_PKGC7_IRTL ; 
 int /*<<< orphan*/  MSR_PKGC8_IRTL ; 
 int /*<<< orphan*/  MSR_PKGC9_IRTL ; 
 int base_cpu ; 
 int /*<<< orphan*/  do_irtl_hsw ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ,unsigned long long*) ; 
 unsigned long long* irtl_time_units ; 
 int /*<<< orphan*/  outf ; 

void FUNC2(void)
{
	unsigned long long msr;

	FUNC1(base_cpu, MSR_PKGC3_IRTL, &msr);
	FUNC0(outf, "cpu%d: MSR_PKGC3_IRTL: 0x%08llx (", base_cpu, msr);
	FUNC0(outf, "%svalid, %lld ns)\n", msr & (1 << 15) ? "" : "NOT",
		(msr & 0x3FF) * irtl_time_units[(msr >> 10) & 0x3]);

	FUNC1(base_cpu, MSR_PKGC6_IRTL, &msr);
	FUNC0(outf, "cpu%d: MSR_PKGC6_IRTL: 0x%08llx (", base_cpu, msr);
	FUNC0(outf, "%svalid, %lld ns)\n", msr & (1 << 15) ? "" : "NOT",
		(msr & 0x3FF) * irtl_time_units[(msr >> 10) & 0x3]);

	FUNC1(base_cpu, MSR_PKGC7_IRTL, &msr);
	FUNC0(outf, "cpu%d: MSR_PKGC7_IRTL: 0x%08llx (", base_cpu, msr);
	FUNC0(outf, "%svalid, %lld ns)\n", msr & (1 << 15) ? "" : "NOT",
		(msr & 0x3FF) * irtl_time_units[(msr >> 10) & 0x3]);

	if (!do_irtl_hsw)
		return;

	FUNC1(base_cpu, MSR_PKGC8_IRTL, &msr);
	FUNC0(outf, "cpu%d: MSR_PKGC8_IRTL: 0x%08llx (", base_cpu, msr);
	FUNC0(outf, "%svalid, %lld ns)\n", msr & (1 << 15) ? "" : "NOT",
		(msr & 0x3FF) * irtl_time_units[(msr >> 10) & 0x3]);

	FUNC1(base_cpu, MSR_PKGC9_IRTL, &msr);
	FUNC0(outf, "cpu%d: MSR_PKGC9_IRTL: 0x%08llx (", base_cpu, msr);
	FUNC0(outf, "%svalid, %lld ns)\n", msr & (1 << 15) ? "" : "NOT",
		(msr & 0x3FF) * irtl_time_units[(msr >> 10) & 0x3]);

	FUNC1(base_cpu, MSR_PKGC10_IRTL, &msr);
	FUNC0(outf, "cpu%d: MSR_PKGC10_IRTL: 0x%08llx (", base_cpu, msr);
	FUNC0(outf, "%svalid, %lld ns)\n", msr & (1 << 15) ? "" : "NOT",
		(msr & 0x3FF) * irtl_time_units[(msr >> 10) & 0x3]);

}