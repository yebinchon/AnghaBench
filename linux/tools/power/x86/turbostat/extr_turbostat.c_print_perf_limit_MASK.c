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
struct thread_data {int cpu_id; int flags; } ;
struct pkg_data {int dummy; } ;
struct core_data {int dummy; } ;

/* Variables and functions */
 int CPU_IS_FIRST_CORE_IN_PACKAGE ; 
 int CPU_IS_FIRST_THREAD_IN_CORE ; 
 int /*<<< orphan*/  MSR_CORE_PERF_LIMIT_REASONS ; 
 int /*<<< orphan*/  MSR_GFX_PERF_LIMIT_REASONS ; 
 int /*<<< orphan*/  MSR_RING_PERF_LIMIT_REASONS ; 
 scalar_t__ FUNC0 (int) ; 
 scalar_t__ do_core_perf_limit_reasons ; 
 scalar_t__ do_gfx_perf_limit_reasons ; 
 scalar_t__ do_ring_perf_limit_reasons ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ,unsigned long long*) ; 
 int /*<<< orphan*/  outf ; 

int FUNC3(struct thread_data *t, struct core_data *c, struct pkg_data *p)
{
	unsigned long long msr;
	int cpu;

	cpu = t->cpu_id;

	/* per-package */
	if (!(t->flags & CPU_IS_FIRST_THREAD_IN_CORE) || !(t->flags & CPU_IS_FIRST_CORE_IN_PACKAGE))
		return 0;

	if (FUNC0(cpu)) {
		FUNC1(outf, "Could not migrate to CPU %d\n", cpu);
		return -1;
	}

	if (do_core_perf_limit_reasons) {
		FUNC2(cpu, MSR_CORE_PERF_LIMIT_REASONS, &msr);
		FUNC1(outf, "cpu%d: MSR_CORE_PERF_LIMIT_REASONS, 0x%08llx", cpu, msr);
		FUNC1(outf, " (Active: %s%s%s%s%s%s%s%s%s%s%s%s%s%s)",
			(msr & 1 << 15) ? "bit15, " : "",
			(msr & 1 << 14) ? "bit14, " : "",
			(msr & 1 << 13) ? "Transitions, " : "",
			(msr & 1 << 12) ? "MultiCoreTurbo, " : "",
			(msr & 1 << 11) ? "PkgPwrL2, " : "",
			(msr & 1 << 10) ? "PkgPwrL1, " : "",
			(msr & 1 << 9) ? "CorePwr, " : "",
			(msr & 1 << 8) ? "Amps, " : "",
			(msr & 1 << 6) ? "VR-Therm, " : "",
			(msr & 1 << 5) ? "Auto-HWP, " : "",
			(msr & 1 << 4) ? "Graphics, " : "",
			(msr & 1 << 2) ? "bit2, " : "",
			(msr & 1 << 1) ? "ThermStatus, " : "",
			(msr & 1 << 0) ? "PROCHOT, " : "");
		FUNC1(outf, " (Logged: %s%s%s%s%s%s%s%s%s%s%s%s%s%s)\n",
			(msr & 1 << 31) ? "bit31, " : "",
			(msr & 1 << 30) ? "bit30, " : "",
			(msr & 1 << 29) ? "Transitions, " : "",
			(msr & 1 << 28) ? "MultiCoreTurbo, " : "",
			(msr & 1 << 27) ? "PkgPwrL2, " : "",
			(msr & 1 << 26) ? "PkgPwrL1, " : "",
			(msr & 1 << 25) ? "CorePwr, " : "",
			(msr & 1 << 24) ? "Amps, " : "",
			(msr & 1 << 22) ? "VR-Therm, " : "",
			(msr & 1 << 21) ? "Auto-HWP, " : "",
			(msr & 1 << 20) ? "Graphics, " : "",
			(msr & 1 << 18) ? "bit18, " : "",
			(msr & 1 << 17) ? "ThermStatus, " : "",
			(msr & 1 << 16) ? "PROCHOT, " : "");

	}
	if (do_gfx_perf_limit_reasons) {
		FUNC2(cpu, MSR_GFX_PERF_LIMIT_REASONS, &msr);
		FUNC1(outf, "cpu%d: MSR_GFX_PERF_LIMIT_REASONS, 0x%08llx", cpu, msr);
		FUNC1(outf, " (Active: %s%s%s%s%s%s%s%s)",
			(msr & 1 << 0) ? "PROCHOT, " : "",
			(msr & 1 << 1) ? "ThermStatus, " : "",
			(msr & 1 << 4) ? "Graphics, " : "",
			(msr & 1 << 6) ? "VR-Therm, " : "",
			(msr & 1 << 8) ? "Amps, " : "",
			(msr & 1 << 9) ? "GFXPwr, " : "",
			(msr & 1 << 10) ? "PkgPwrL1, " : "",
			(msr & 1 << 11) ? "PkgPwrL2, " : "");
		FUNC1(outf, " (Logged: %s%s%s%s%s%s%s%s)\n",
			(msr & 1 << 16) ? "PROCHOT, " : "",
			(msr & 1 << 17) ? "ThermStatus, " : "",
			(msr & 1 << 20) ? "Graphics, " : "",
			(msr & 1 << 22) ? "VR-Therm, " : "",
			(msr & 1 << 24) ? "Amps, " : "",
			(msr & 1 << 25) ? "GFXPwr, " : "",
			(msr & 1 << 26) ? "PkgPwrL1, " : "",
			(msr & 1 << 27) ? "PkgPwrL2, " : "");
	}
	if (do_ring_perf_limit_reasons) {
		FUNC2(cpu, MSR_RING_PERF_LIMIT_REASONS, &msr);
		FUNC1(outf, "cpu%d: MSR_RING_PERF_LIMIT_REASONS, 0x%08llx", cpu, msr);
		FUNC1(outf, " (Active: %s%s%s%s%s%s)",
			(msr & 1 << 0) ? "PROCHOT, " : "",
			(msr & 1 << 1) ? "ThermStatus, " : "",
			(msr & 1 << 6) ? "VR-Therm, " : "",
			(msr & 1 << 8) ? "Amps, " : "",
			(msr & 1 << 10) ? "PkgPwrL1, " : "",
			(msr & 1 << 11) ? "PkgPwrL2, " : "");
		FUNC1(outf, " (Logged: %s%s%s%s%s%s)\n",
			(msr & 1 << 16) ? "PROCHOT, " : "",
			(msr & 1 << 17) ? "ThermStatus, " : "",
			(msr & 1 << 22) ? "VR-Therm, " : "",
			(msr & 1 << 24) ? "Amps, " : "",
			(msr & 1 << 26) ? "PkgPwrL1, " : "",
			(msr & 1 << 27) ? "PkgPwrL2, " : "");
	}
	return 0;
}