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
 int /*<<< orphan*/  BIC_CorWatt ; 
 int /*<<< orphan*/  BIC_Cor_J ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  BIC_PkgWatt ; 
 int /*<<< orphan*/  BIC_Pkg_J ; 
 int /*<<< orphan*/  MSR_RAPL_PWR_UNIT ; 
 int RAPL_AMD_F17H ; 
 int RAPL_PER_CORE_ENERGY ; 
 int /*<<< orphan*/  FUNC1 (int,unsigned int,unsigned int,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  base_cpu ; 
 int do_rapl ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,double,double) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned long long*) ; 
 double FUNC4 (unsigned int) ; 
 void* FUNC5 (double,unsigned long long) ; 
 int max_extended_level ; 
 int /*<<< orphan*/  outf ; 
 int /*<<< orphan*/  quiet ; 
 int rapl_energy_units ; 
 double rapl_joule_counter_range ; 
 int /*<<< orphan*/  rapl_joules ; 
 void* rapl_power_units ; 
 void* rapl_time_units ; 

void FUNC6(unsigned int family, unsigned int model)
{
	unsigned long long msr;
	unsigned int eax, ebx, ecx, edx;
	unsigned int has_rapl = 0;
	double tdp;

	if (max_extended_level >= 0x80000007) {
		FUNC1(0x80000007, eax, ebx, ecx, edx);
		/* RAPL (Fam 17h) */
		has_rapl = edx & (1 << 14);
	}

	if (!has_rapl)
		return;

	switch (family) {
	case 0x17: /* Zen, Zen+ */
	case 0x18: /* Hygon Dhyana */
		do_rapl = RAPL_AMD_F17H | RAPL_PER_CORE_ENERGY;
		if (rapl_joules) {
			FUNC0(BIC_Pkg_J);
			FUNC0(BIC_Cor_J);
		} else {
			FUNC0(BIC_PkgWatt);
			FUNC0(BIC_CorWatt);
		}
		break;
	default:
		return;
	}

	if (FUNC3(base_cpu, MSR_RAPL_PWR_UNIT, &msr))
		return;

	rapl_time_units = FUNC5(1.0, -(msr >> 16 & 0xf));
	rapl_energy_units = FUNC5(1.0, -(msr >> 8 & 0x1f));
	rapl_power_units = FUNC5(1.0, -(msr & 0xf));

	tdp = FUNC4(family);

	rapl_joule_counter_range = 0xFFFFFFFF * rapl_energy_units / tdp;
	if (!quiet)
		FUNC2(outf, "RAPL: %.0f sec. Joule Counter Range, at %.0f Watts\n", rapl_joule_counter_range, tdp);
}