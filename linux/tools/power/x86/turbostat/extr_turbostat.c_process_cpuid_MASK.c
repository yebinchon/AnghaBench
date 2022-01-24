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
 int /*<<< orphan*/  BIC_Any_c0 ; 
 int /*<<< orphan*/  BIC_Avg_MHz ; 
 int /*<<< orphan*/  BIC_Busy ; 
 int /*<<< orphan*/  BIC_Bzy_MHz ; 
 int /*<<< orphan*/  BIC_CPUGFX ; 
 int /*<<< orphan*/  BIC_CPU_LPI ; 
 int /*<<< orphan*/  BIC_CPU_c1 ; 
 int /*<<< orphan*/  BIC_CPU_c3 ; 
 int /*<<< orphan*/  BIC_CPU_c6 ; 
 int /*<<< orphan*/  BIC_CPU_c7 ; 
 int /*<<< orphan*/  BIC_CoreTmp ; 
 int /*<<< orphan*/  BIC_GFXMHz ; 
 int /*<<< orphan*/  BIC_GFX_c0 ; 
 int /*<<< orphan*/  BIC_GFX_rc6 ; 
 int /*<<< orphan*/  BIC_IRQ ; 
 int /*<<< orphan*/  BIC_Mod_c6 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  BIC_PkgTmp ; 
 int /*<<< orphan*/  BIC_Pkgpc10 ; 
 int /*<<< orphan*/  BIC_Pkgpc2 ; 
 int /*<<< orphan*/  BIC_Pkgpc3 ; 
 int /*<<< orphan*/  BIC_Pkgpc6 ; 
 int /*<<< orphan*/  BIC_Pkgpc7 ; 
 int /*<<< orphan*/  BIC_Pkgpc8 ; 
 int /*<<< orphan*/  BIC_Pkgpc9 ; 
 int /*<<< orphan*/  BIC_SMI ; 
 int /*<<< orphan*/  BIC_SYS_LPI ; 
 int /*<<< orphan*/  BIC_TSC_MHz ; 
 int /*<<< orphan*/  BIC_Totl_c0 ; 
#define  INTEL_FAM6_ATOM_GOLDMONT 131 
#define  INTEL_FAM6_ATOM_GOLDMONT_D 130 
#define  INTEL_FAM6_ATOM_GOLDMONT_PLUS 129 
#define  INTEL_FAM6_SKYLAKE_L 128 
 scalar_t__ PCL__2 ; 
 scalar_t__ PCL__3 ; 
 scalar_t__ PCL__6 ; 
 scalar_t__ PCL__7 ; 
 int /*<<< orphan*/  R_OK ; 
 int /*<<< orphan*/  FUNC2 (int,unsigned int,unsigned int,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ,unsigned int,unsigned int,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  aperf_mperf_multiplier ; 
 int authentic_amd ; 
 int /*<<< orphan*/  FUNC5 (unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int crystal_hz ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int do_dts ; 
 scalar_t__ do_irtl_hsw ; 
 void* do_irtl_snb ; 
 scalar_t__ do_knl_cstates ; 
 int do_nhm_platform_info ; 
 int do_ptm ; 
 scalar_t__ do_slm_cstates ; 
 void* do_snb_cstates ; 
 int /*<<< orphan*/  FUNC12 (unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 () ; 
 int /*<<< orphan*/  FUNC15 (int,char*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,char*,...) ; 
 int genuine_intel ; 
 int /*<<< orphan*/  FUNC17 (unsigned int,unsigned int) ; 
 int has_aperf ; 
 scalar_t__ FUNC18 (unsigned int,unsigned int) ; 
 int has_epb ; 
 int has_hwp ; 
 int has_hwp_activity_window ; 
 int has_hwp_epp ; 
 int has_hwp_notify ; 
 int has_hwp_pkg ; 
 unsigned int has_invariant_tsc ; 
 scalar_t__ FUNC19 (unsigned int,unsigned int) ; 
 scalar_t__ FUNC20 (unsigned int,unsigned int) ; 
 void* FUNC21 (unsigned int,unsigned int) ; 
 int hygon_genuine ; 
 unsigned int FUNC22 (unsigned int) ; 
 scalar_t__ FUNC23 (unsigned int,unsigned int) ; 
 scalar_t__ FUNC24 (unsigned int,unsigned int) ; 
 scalar_t__ FUNC25 (unsigned int,unsigned int) ; 
 scalar_t__ FUNC26 (unsigned int,unsigned int) ; 
 scalar_t__ FUNC27 (unsigned int,unsigned int) ; 
 scalar_t__ FUNC28 (unsigned int,unsigned int) ; 
 int max_extended_level ; 
 int max_level ; 
 int /*<<< orphan*/  outf ; 
 int /*<<< orphan*/  FUNC29 (unsigned int,unsigned int) ; 
 scalar_t__ pkg_cstate_limit ; 
 scalar_t__ FUNC30 (unsigned int,unsigned int) ; 
 int /*<<< orphan*/  quiet ; 
 int /*<<< orphan*/  FUNC31 (unsigned int,unsigned int) ; 
 int tsc_hz ; 
 int use_c1_residency_msr ; 

void FUNC32()
{
	unsigned int eax, ebx, ecx, edx;
	unsigned int fms, family, model, stepping, ecx_flags, edx_flags;
	unsigned int has_turbo;

	eax = ebx = ecx = edx = 0;

	FUNC2(0, max_level, ebx, ecx, edx);

	if (ebx == 0x756e6547 && ecx == 0x6c65746e && edx == 0x49656e69)
		genuine_intel = 1;
	else if (ebx == 0x68747541 && ecx == 0x444d4163 && edx == 0x69746e65)
		authentic_amd = 1;
	else if (ebx == 0x6f677948 && ecx == 0x656e6975 && edx == 0x6e65476e)
		hygon_genuine = 1;

	if (!quiet)
		FUNC16(outf, "CPUID(0): %.4s%.4s%.4s ",
			(char *)&ebx, (char *)&edx, (char *)&ecx);

	FUNC2(1, fms, ebx, ecx, edx);
	family = (fms >> 8) & 0xf;
	model = (fms >> 4) & 0xf;
	stepping = fms & 0xf;
	if (family == 0xf)
		family += (fms >> 20) & 0xff;
	if (family >= 6)
		model += ((fms >> 16) & 0xf) << 4;
	ecx_flags = ecx;
	edx_flags = edx;

	/*
	 * check max extended function levels of CPUID.
	 * This is needed to check for invariant TSC.
	 * This check is valid for both Intel and AMD.
	 */
	ebx = ecx = edx = 0;
	FUNC2(0x80000000, max_extended_level, ebx, ecx, edx);

	if (!quiet) {
		FUNC16(outf, "0x%x CPUID levels; 0x%x xlevels; family:model:stepping 0x%x:%x:%x (%d:%d:%d)\n",
			max_level, max_extended_level, family, model, stepping, family, model, stepping);
		FUNC16(outf, "CPUID(1): %s %s %s %s %s %s %s %s %s %s\n",
			ecx_flags & (1 << 0) ? "SSE3" : "-",
			ecx_flags & (1 << 3) ? "MONITOR" : "-",
			ecx_flags & (1 << 6) ? "SMX" : "-",
			ecx_flags & (1 << 7) ? "EIST" : "-",
			ecx_flags & (1 << 8) ? "TM2" : "-",
			edx_flags & (1 << 4) ? "TSC" : "-",
			edx_flags & (1 << 5) ? "MSR" : "-",
			edx_flags & (1 << 22) ? "ACPI-TM" : "-",
			edx_flags & (1 << 28) ? "HT" : "-",
			edx_flags & (1 << 29) ? "TM" : "-");
	}
	if (genuine_intel)
		model = FUNC22(model);

	if (!(edx_flags & (1 << 5)))
		FUNC15(1, "CPUID: no MSR");

	if (max_extended_level >= 0x80000007) {

		/*
		 * Non-Stop TSC is advertised by CPUID.EAX=0x80000007: EDX.bit8
		 * this check is valid for both Intel and AMD
		 */
		FUNC2(0x80000007, eax, ebx, ecx, edx);
		has_invariant_tsc = edx & (1 << 8);
	}

	/*
	 * APERF/MPERF is advertised by CPUID.EAX=0x6: ECX.bit0
	 * this check is valid for both Intel and AMD
	 */

	FUNC2(0x6, eax, ebx, ecx, edx);
	has_aperf = ecx & (1 << 0);
	if (has_aperf) {
		FUNC1(BIC_Avg_MHz);
		FUNC1(BIC_Busy);
		FUNC1(BIC_Bzy_MHz);
	}
	do_dts = eax & (1 << 0);
	if (do_dts)
		FUNC1(BIC_CoreTmp);
	has_turbo = eax & (1 << 1);
	do_ptm = eax & (1 << 6);
	if (do_ptm)
		FUNC1(BIC_PkgTmp);
	has_hwp = eax & (1 << 7);
	has_hwp_notify = eax & (1 << 8);
	has_hwp_activity_window = eax & (1 << 9);
	has_hwp_epp = eax & (1 << 10);
	has_hwp_pkg = eax & (1 << 11);
	has_epb = ecx & (1 << 3);

	if (!quiet)
		FUNC16(outf, "CPUID(6): %sAPERF, %sTURBO, %sDTS, %sPTM, %sHWP, "
			"%sHWPnotify, %sHWPwindow, %sHWPepp, %sHWPpkg, %sEPB\n",
			has_aperf ? "" : "No-",
			has_turbo ? "" : "No-",
			do_dts ? "" : "No-",
			do_ptm ? "" : "No-",
			has_hwp ? "" : "No-",
			has_hwp_notify ? "" : "No-",
			has_hwp_activity_window ? "" : "No-",
			has_hwp_epp ? "" : "No-",
			has_hwp_pkg ? "" : "No-",
			has_epb ? "" : "No-");

	if (!quiet)
		FUNC9();


	if (max_level >= 0x7 && !quiet) {
		int has_sgx;

		ecx = 0;

		FUNC3(0x7, 0, eax, ebx, ecx, edx);

		has_sgx = ebx & (1 << 2);
		FUNC16(outf, "CPUID(7): %sSGX\n", has_sgx ? "" : "No-");

		if (has_sgx)
			FUNC8();
	}

	if (max_level >= 0x15) {
		unsigned int eax_crystal;
		unsigned int ebx_tsc;

		/*
		 * CPUID 15H TSC/Crystal ratio, possibly Crystal Hz
		 */
		eax_crystal = ebx_tsc = crystal_hz = edx = 0;
		FUNC2(0x15, eax_crystal, ebx_tsc, crystal_hz, edx);

		if (ebx_tsc != 0) {

			if (!quiet && (ebx != 0))
				FUNC16(outf, "CPUID(0x15): eax_crystal: %d ebx_tsc: %d ecx_crystal_hz: %d\n",
					eax_crystal, ebx_tsc, crystal_hz);

			if (crystal_hz == 0)
				switch(model) {
				case INTEL_FAM6_SKYLAKE_L:	/* SKL */
					crystal_hz = 24000000;	/* 24.0 MHz */
					break;
				case INTEL_FAM6_ATOM_GOLDMONT_D:	/* DNV */
					crystal_hz = 25000000;	/* 25.0 MHz */
					break;
				case INTEL_FAM6_ATOM_GOLDMONT:	/* BXT */
				case INTEL_FAM6_ATOM_GOLDMONT_PLUS:
					crystal_hz = 19200000;	/* 19.2 MHz */
					break;
				default:
					crystal_hz = 0;
			}

			if (crystal_hz) {
				tsc_hz =  (unsigned long long) crystal_hz * ebx_tsc / eax_crystal;
				if (!quiet)
					FUNC16(outf, "TSC: %d MHz (%d Hz * %d / %d / 1000000)\n",
						tsc_hz / 1000000, crystal_hz, ebx_tsc,  eax_crystal);
			}
		}
	}
	if (max_level >= 0x16) {
		unsigned int base_mhz, max_mhz, bus_mhz, edx;

		/*
		 * CPUID 16H Base MHz, Max MHz, Bus MHz
		 */
		base_mhz = max_mhz = bus_mhz = edx = 0;

		FUNC2(0x16, base_mhz, max_mhz, bus_mhz, edx);
		if (!quiet)
			FUNC16(outf, "CPUID(0x16): base_mhz: %d max_mhz: %d bus_mhz: %d\n",
				base_mhz, max_mhz, bus_mhz);
	}

	if (has_aperf)
		aperf_mperf_multiplier = FUNC17(family, model);

	FUNC1(BIC_IRQ);
	FUNC1(BIC_TSC_MHz);

	if (FUNC30(family, model)) {
		do_nhm_platform_info = 1;
		FUNC1(BIC_CPU_c1);
		FUNC1(BIC_CPU_c3);
		FUNC1(BIC_CPU_c6);
		FUNC1(BIC_SMI);
	}
	do_snb_cstates = FUNC21(family, model);

	if (do_snb_cstates)
		FUNC1(BIC_CPU_c7);

	do_irtl_snb = FUNC21(family, model);
	if (do_snb_cstates && (pkg_cstate_limit >= PCL__2))
		FUNC1(BIC_Pkgpc2);
	if (pkg_cstate_limit >= PCL__3)
		FUNC1(BIC_Pkgpc3);
	if (pkg_cstate_limit >= PCL__6)
		FUNC1(BIC_Pkgpc6);
	if (do_snb_cstates && (pkg_cstate_limit >= PCL__7))
		FUNC1(BIC_Pkgpc7);
	if (FUNC20(family, model)) {
		FUNC0(BIC_Pkgpc2);
		FUNC0(BIC_Pkgpc3);
		FUNC1(BIC_Pkgpc6);
		FUNC0(BIC_Pkgpc7);
		FUNC1(BIC_Mod_c6);
		use_c1_residency_msr = 1;
	}
	if (FUNC25(family, model)) {
		FUNC1(BIC_CPU_c1);
		FUNC0(BIC_CPU_c3);
		FUNC0(BIC_Pkgpc3);
		FUNC0(BIC_CPU_c7);
		FUNC0(BIC_Pkgpc7);
		use_c1_residency_msr = 1;
	}
	if (FUNC27(family, model)) {
		FUNC0(BIC_CPU_c3);
		FUNC0(BIC_Pkgpc3);
		FUNC0(BIC_CPU_c7);
		FUNC0(BIC_Pkgpc7);
	}
	if (FUNC23(family, model)) {
		FUNC0(BIC_CPU_c7);
		FUNC0(BIC_Pkgpc7);
	}
	if (FUNC18(family, model)) {
		FUNC1(BIC_Pkgpc8);
		FUNC1(BIC_Pkgpc9);
		FUNC1(BIC_Pkgpc10);
	}
	do_irtl_hsw = FUNC18(family, model);
	if (FUNC19(family, model)) {
		FUNC1(BIC_Totl_c0);
		FUNC1(BIC_Any_c0);
		FUNC1(BIC_GFX_c0);
		FUNC1(BIC_CPUGFX);
	}
	do_slm_cstates = FUNC28(family, model);
	do_knl_cstates  = FUNC26(family, model);

	if (do_slm_cstates || do_knl_cstates || FUNC24(family, model))
		FUNC0(BIC_CPU_c3);

	if (!quiet)
		FUNC11();

	if (!quiet && FUNC20(family, model))
		FUNC7();

	FUNC31(family, model);
	FUNC29(family, model);
	FUNC5(family, model);

	if (!quiet)
		FUNC12(family, model);

	if (!quiet)
		FUNC13();
	if (!quiet)
		FUNC14();

	if (FUNC19(family, model))
		FUNC6();

	if (!FUNC4("/sys/class/drm/card0/power/rc6_residency_ms", R_OK))
		FUNC1(BIC_GFX_rc6);

	if (!FUNC4("/sys/class/graphics/fb0/device/drm/card0/gt_cur_freq_mhz", R_OK))
		FUNC1(BIC_GFXMHz);

	if (!FUNC4("/sys/devices/system/cpu/cpuidle/low_power_idle_cpu_residency_us", R_OK))
		FUNC1(BIC_CPU_LPI);
	else
		FUNC0(BIC_CPU_LPI);

	if (!FUNC4("/sys/devices/system/cpu/cpuidle/low_power_idle_system_residency_us", R_OK))
		FUNC1(BIC_SYS_LPI);
	else
		FUNC0(BIC_SYS_LPI);

	if (!quiet)
		FUNC10();

	return;
}