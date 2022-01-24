#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct msr_counter {scalar_t__ format; int width; scalar_t__ type; int /*<<< orphan*/  name; struct msr_counter* next; } ;
struct TYPE_2__ {struct msr_counter* pp; struct msr_counter* cp; struct msr_counter* tp; } ;

/* Variables and functions */
 int /*<<< orphan*/  BIC_APIC ; 
 int /*<<< orphan*/  BIC_Any_c0 ; 
 int /*<<< orphan*/  BIC_Avg_MHz ; 
 int /*<<< orphan*/  BIC_Busy ; 
 int /*<<< orphan*/  BIC_Bzy_MHz ; 
 int /*<<< orphan*/  BIC_CPU ; 
 int /*<<< orphan*/  BIC_CPUGFX ; 
 int /*<<< orphan*/  BIC_CPU_LPI ; 
 int /*<<< orphan*/  BIC_CPU_c1 ; 
 int /*<<< orphan*/  BIC_CPU_c3 ; 
 int /*<<< orphan*/  BIC_CPU_c6 ; 
 int /*<<< orphan*/  BIC_CPU_c7 ; 
 int /*<<< orphan*/  BIC_CorWatt ; 
 int /*<<< orphan*/  BIC_Cor_J ; 
 int /*<<< orphan*/  BIC_Core ; 
 int /*<<< orphan*/  BIC_CoreTmp ; 
 int /*<<< orphan*/  BIC_Die ; 
 int /*<<< orphan*/  BIC_GFXMHz ; 
 int /*<<< orphan*/  BIC_GFXWatt ; 
 int /*<<< orphan*/  BIC_GFX_J ; 
 int /*<<< orphan*/  BIC_GFX_c0 ; 
 int /*<<< orphan*/  BIC_GFX_rc6 ; 
 int /*<<< orphan*/  BIC_IRQ ; 
 int /*<<< orphan*/  BIC_Mod_c6 ; 
 int /*<<< orphan*/  BIC_Node ; 
 int /*<<< orphan*/  BIC_PKG__ ; 
 int /*<<< orphan*/  BIC_Package ; 
 int /*<<< orphan*/  BIC_PkgTmp ; 
 int /*<<< orphan*/  BIC_PkgWatt ; 
 int /*<<< orphan*/  BIC_Pkg_J ; 
 int /*<<< orphan*/  BIC_Pkgpc10 ; 
 int /*<<< orphan*/  BIC_Pkgpc2 ; 
 int /*<<< orphan*/  BIC_Pkgpc3 ; 
 int /*<<< orphan*/  BIC_Pkgpc6 ; 
 int /*<<< orphan*/  BIC_Pkgpc7 ; 
 int /*<<< orphan*/  BIC_Pkgpc8 ; 
 int /*<<< orphan*/  BIC_Pkgpc9 ; 
 int /*<<< orphan*/  BIC_RAMWatt ; 
 int /*<<< orphan*/  BIC_RAM_J ; 
 int /*<<< orphan*/  BIC_RAM__ ; 
 int /*<<< orphan*/  BIC_SMI ; 
 int /*<<< orphan*/  BIC_SYS_LPI ; 
 int /*<<< orphan*/  BIC_TOD ; 
 int /*<<< orphan*/  BIC_TSC_MHz ; 
 int /*<<< orphan*/  BIC_Totl_c0 ; 
 int /*<<< orphan*/  BIC_USEC ; 
 int /*<<< orphan*/  BIC_X2APIC ; 
 scalar_t__ COUNTER_ITEMS ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FORMAT_RAW ; 
 int RAPL_PER_CORE_ENERGY ; 
 int do_rapl ; 
 int /*<<< orphan*/  outp ; 
 scalar_t__ rapl_joules ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 scalar_t__ sums_need_wide_columns ; 
 TYPE_1__ sys ; 

void FUNC2(char *delim)
{
	struct msr_counter *mp;
	int printed = 0;

	if (FUNC0(BIC_USEC))
		outp += FUNC1(outp, "%susec", (printed++ ? delim : ""));
	if (FUNC0(BIC_TOD))
		outp += FUNC1(outp, "%sTime_Of_Day_Seconds", (printed++ ? delim : ""));
	if (FUNC0(BIC_Package))
		outp += FUNC1(outp, "%sPackage", (printed++ ? delim : ""));
	if (FUNC0(BIC_Die))
		outp += FUNC1(outp, "%sDie", (printed++ ? delim : ""));
	if (FUNC0(BIC_Node))
		outp += FUNC1(outp, "%sNode", (printed++ ? delim : ""));
	if (FUNC0(BIC_Core))
		outp += FUNC1(outp, "%sCore", (printed++ ? delim : ""));
	if (FUNC0(BIC_CPU))
		outp += FUNC1(outp, "%sCPU", (printed++ ? delim : ""));
	if (FUNC0(BIC_APIC))
		outp += FUNC1(outp, "%sAPIC", (printed++ ? delim : ""));
	if (FUNC0(BIC_X2APIC))
		outp += FUNC1(outp, "%sX2APIC", (printed++ ? delim : ""));
	if (FUNC0(BIC_Avg_MHz))
		outp += FUNC1(outp, "%sAvg_MHz", (printed++ ? delim : ""));
	if (FUNC0(BIC_Busy))
		outp += FUNC1(outp, "%sBusy%%", (printed++ ? delim : ""));
	if (FUNC0(BIC_Bzy_MHz))
		outp += FUNC1(outp, "%sBzy_MHz", (printed++ ? delim : ""));
	if (FUNC0(BIC_TSC_MHz))
		outp += FUNC1(outp, "%sTSC_MHz", (printed++ ? delim : ""));

	if (FUNC0(BIC_IRQ)) {
		if (sums_need_wide_columns)
			outp += FUNC1(outp, "%s     IRQ", (printed++ ? delim : ""));
		else
			outp += FUNC1(outp, "%sIRQ", (printed++ ? delim : ""));
	}

	if (FUNC0(BIC_SMI))
		outp += FUNC1(outp, "%sSMI", (printed++ ? delim : ""));

	for (mp = sys.tp; mp; mp = mp->next) {

		if (mp->format == FORMAT_RAW) {
			if (mp->width == 64)
				outp += FUNC1(outp, "%s%18.18s", (printed++ ? delim : ""), mp->name);
			else
				outp += FUNC1(outp, "%s%10.10s", (printed++ ? delim : ""), mp->name);
		} else {
			if ((mp->type == COUNTER_ITEMS) && sums_need_wide_columns)
				outp += FUNC1(outp, "%s%8s", (printed++ ? delim : ""), mp->name);
			else
				outp += FUNC1(outp, "%s%s", (printed++ ? delim : ""), mp->name);
		}
	}

	if (FUNC0(BIC_CPU_c1))
		outp += FUNC1(outp, "%sCPU%%c1", (printed++ ? delim : ""));
	if (FUNC0(BIC_CPU_c3))
		outp += FUNC1(outp, "%sCPU%%c3", (printed++ ? delim : ""));
	if (FUNC0(BIC_CPU_c6))
		outp += FUNC1(outp, "%sCPU%%c6", (printed++ ? delim : ""));
	if (FUNC0(BIC_CPU_c7))
		outp += FUNC1(outp, "%sCPU%%c7", (printed++ ? delim : ""));

	if (FUNC0(BIC_Mod_c6))
		outp += FUNC1(outp, "%sMod%%c6", (printed++ ? delim : ""));

	if (FUNC0(BIC_CoreTmp))
		outp += FUNC1(outp, "%sCoreTmp", (printed++ ? delim : ""));

	if (do_rapl && !rapl_joules) {
		if (FUNC0(BIC_CorWatt) && (do_rapl & RAPL_PER_CORE_ENERGY))
			outp += FUNC1(outp, "%sCorWatt", (printed++ ? delim : ""));
	} else if (do_rapl && rapl_joules) {
		if (FUNC0(BIC_Cor_J) && (do_rapl & RAPL_PER_CORE_ENERGY))
			outp += FUNC1(outp, "%sCor_J", (printed++ ? delim : ""));
	}

	for (mp = sys.cp; mp; mp = mp->next) {
		if (mp->format == FORMAT_RAW) {
			if (mp->width == 64)
				outp += FUNC1(outp, "%s%18.18s", delim, mp->name);
			else
				outp += FUNC1(outp, "%s%10.10s", delim, mp->name);
		} else {
			if ((mp->type == COUNTER_ITEMS) && sums_need_wide_columns)
				outp += FUNC1(outp, "%s%8s", delim, mp->name);
			else
				outp += FUNC1(outp, "%s%s", delim, mp->name);
		}
	}

	if (FUNC0(BIC_PkgTmp))
		outp += FUNC1(outp, "%sPkgTmp", (printed++ ? delim : ""));

	if (FUNC0(BIC_GFX_rc6))
		outp += FUNC1(outp, "%sGFX%%rc6", (printed++ ? delim : ""));

	if (FUNC0(BIC_GFXMHz))
		outp += FUNC1(outp, "%sGFXMHz", (printed++ ? delim : ""));

	if (FUNC0(BIC_Totl_c0))
		outp += FUNC1(outp, "%sTotl%%C0", (printed++ ? delim : ""));
	if (FUNC0(BIC_Any_c0))
		outp += FUNC1(outp, "%sAny%%C0", (printed++ ? delim : ""));
	if (FUNC0(BIC_GFX_c0))
		outp += FUNC1(outp, "%sGFX%%C0", (printed++ ? delim : ""));
	if (FUNC0(BIC_CPUGFX))
		outp += FUNC1(outp, "%sCPUGFX%%", (printed++ ? delim : ""));

	if (FUNC0(BIC_Pkgpc2))
		outp += FUNC1(outp, "%sPkg%%pc2", (printed++ ? delim : ""));
	if (FUNC0(BIC_Pkgpc3))
		outp += FUNC1(outp, "%sPkg%%pc3", (printed++ ? delim : ""));
	if (FUNC0(BIC_Pkgpc6))
		outp += FUNC1(outp, "%sPkg%%pc6", (printed++ ? delim : ""));
	if (FUNC0(BIC_Pkgpc7))
		outp += FUNC1(outp, "%sPkg%%pc7", (printed++ ? delim : ""));
	if (FUNC0(BIC_Pkgpc8))
		outp += FUNC1(outp, "%sPkg%%pc8", (printed++ ? delim : ""));
	if (FUNC0(BIC_Pkgpc9))
		outp += FUNC1(outp, "%sPkg%%pc9", (printed++ ? delim : ""));
	if (FUNC0(BIC_Pkgpc10))
		outp += FUNC1(outp, "%sPk%%pc10", (printed++ ? delim : ""));
	if (FUNC0(BIC_CPU_LPI))
		outp += FUNC1(outp, "%sCPU%%LPI", (printed++ ? delim : ""));
	if (FUNC0(BIC_SYS_LPI))
		outp += FUNC1(outp, "%sSYS%%LPI", (printed++ ? delim : ""));

	if (do_rapl && !rapl_joules) {
		if (FUNC0(BIC_PkgWatt))
			outp += FUNC1(outp, "%sPkgWatt", (printed++ ? delim : ""));
		if (FUNC0(BIC_CorWatt) && !(do_rapl & RAPL_PER_CORE_ENERGY))
			outp += FUNC1(outp, "%sCorWatt", (printed++ ? delim : ""));
		if (FUNC0(BIC_GFXWatt))
			outp += FUNC1(outp, "%sGFXWatt", (printed++ ? delim : ""));
		if (FUNC0(BIC_RAMWatt))
			outp += FUNC1(outp, "%sRAMWatt", (printed++ ? delim : ""));
		if (FUNC0(BIC_PKG__))
			outp += FUNC1(outp, "%sPKG_%%", (printed++ ? delim : ""));
		if (FUNC0(BIC_RAM__))
			outp += FUNC1(outp, "%sRAM_%%", (printed++ ? delim : ""));
	} else if (do_rapl && rapl_joules) {
		if (FUNC0(BIC_Pkg_J))
			outp += FUNC1(outp, "%sPkg_J", (printed++ ? delim : ""));
		if (FUNC0(BIC_Cor_J) && !(do_rapl & RAPL_PER_CORE_ENERGY))
			outp += FUNC1(outp, "%sCor_J", (printed++ ? delim : ""));
		if (FUNC0(BIC_GFX_J))
			outp += FUNC1(outp, "%sGFX_J", (printed++ ? delim : ""));
		if (FUNC0(BIC_RAM_J))
			outp += FUNC1(outp, "%sRAM_J", (printed++ ? delim : ""));
		if (FUNC0(BIC_PKG__))
			outp += FUNC1(outp, "%sPKG_%%", (printed++ ? delim : ""));
		if (FUNC0(BIC_RAM__))
			outp += FUNC1(outp, "%sRAM_%%", (printed++ ? delim : ""));
	}
	for (mp = sys.pp; mp; mp = mp->next) {
		if (mp->format == FORMAT_RAW) {
			if (mp->width == 64)
				outp += FUNC1(outp, "%s%18.18s", delim, mp->name);
			else
				outp += FUNC1(outp, "%s%10.10s", delim, mp->name);
		} else {
			if ((mp->type == COUNTER_ITEMS) && sums_need_wide_columns)
				outp += FUNC1(outp, "%s%8s", delim, mp->name);
			else
				outp += FUNC1(outp, "%s%s", delim, mp->name);
		}
	}

	outp += FUNC1(outp, "\n");
}