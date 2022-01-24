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
 int /*<<< orphan*/  MSR_IA32_ENERGY_PERF_BIAS ; 
 int /*<<< orphan*/  MSR_IA32_MISC_ENABLE ; 
 unsigned long long MSR_IA32_MISC_ENABLE_TURBO_DISABLE ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ,unsigned long long*) ; 
 int /*<<< orphan*/  has_hwp ; 
 int /*<<< orphan*/  FUNC1 () ; 
 unsigned long long new_epb ; 
 int /*<<< orphan*/  FUNC2 (char*,int,...) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ,unsigned long long) ; 
 int turbo_update_value ; 
 scalar_t__ update_epb ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 scalar_t__ update_turbo ; 
 scalar_t__ verbose ; 

int FUNC5(int cpu)
{
	unsigned long long msr;


	if (update_epb) {
		FUNC0(cpu, MSR_IA32_ENERGY_PERF_BIAS, &msr);
		FUNC3(cpu, MSR_IA32_ENERGY_PERF_BIAS, new_epb);

		if (verbose)
			FUNC2("cpu%d: ENERGY_PERF_BIAS old: %d new: %d\n",
				cpu, (unsigned int) msr, (unsigned int) new_epb);
	}

	if (update_turbo) {
		int turbo_is_present_and_disabled;

		FUNC0(cpu, MSR_IA32_MISC_ENABLE, &msr);

		turbo_is_present_and_disabled = ((msr & MSR_IA32_MISC_ENABLE_TURBO_DISABLE) != 0);

		if (turbo_update_value == 1)	{
			if (turbo_is_present_and_disabled) {
				msr &= ~MSR_IA32_MISC_ENABLE_TURBO_DISABLE;
				FUNC3(cpu, MSR_IA32_MISC_ENABLE, msr);
				if (verbose)
					FUNC2("cpu%d: turbo ENABLE\n", cpu);
			}
		} else {
			/*
			 * if "turbo_is_enabled" were known to be describe this cpu
			 * then we could use it here to skip redundant disable requests.
			 * but cpu may be in a different package, so we always write.
			 */
			msr |= MSR_IA32_MISC_ENABLE_TURBO_DISABLE;
			FUNC3(cpu, MSR_IA32_MISC_ENABLE, msr);
			if (verbose)
				FUNC2("cpu%d: turbo DISABLE\n", cpu);
		}
	}

	if (!has_hwp)
		return 0;

	if (!FUNC1())
		return 0;

	FUNC4(cpu);
	return 0;
}