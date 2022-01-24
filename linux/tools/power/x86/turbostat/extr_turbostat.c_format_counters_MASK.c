#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct timeval {int tv_sec; scalar_t__ tv_usec; } ;
struct TYPE_6__ {double tv_sec; double tv_usec; } ;
struct TYPE_7__ {int /*<<< orphan*/  tv_usec; int /*<<< orphan*/  tv_sec; } ;
struct thread_data {int flags; size_t cpu_id; double tsc; double aperf; double mperf; double* counter; double c1; int /*<<< orphan*/  smi_count; int /*<<< orphan*/  irq_count; int /*<<< orphan*/  x2apic_id; int /*<<< orphan*/  apic_id; TYPE_1__ tv_delta; TYPE_2__ tv_end; int /*<<< orphan*/  tv_begin; } ;
struct pkg_data {int gfx_rc6_ms; double pkg_wtd_core_c0; double pkg_any_core_c0; double pkg_any_gfxe_c0; double pkg_both_core_gfxe_c0; double pc2; double pc3; double pc6; double pc7; double pc8; double pc9; double pc10; double cpu_lpi; double sys_lpi; double energy_pkg; double energy_cores; double energy_gfx; double energy_dram; double rapl_pkg_perf_status; double rapl_dram_perf_status; double* counter; int /*<<< orphan*/  gfx_mhz; int /*<<< orphan*/  pkg_temp_c; int /*<<< orphan*/  package_id; } ;
struct msr_counter {scalar_t__ format; int width; scalar_t__ type; struct msr_counter* next; } ;
struct core_data {double c3; double c6; double c7; double mc6_us; double* counter; double core_energy; int /*<<< orphan*/  core_temp_c; int /*<<< orphan*/  core_id; } ;
struct TYPE_10__ {struct thread_data threads; } ;
struct TYPE_9__ {int /*<<< orphan*/  physical_node_id; int /*<<< orphan*/  die_id; } ;
struct TYPE_8__ {struct msr_counter* pp; struct msr_counter* cp; struct msr_counter* tp; } ;

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
 scalar_t__ COUNTER_USEC ; 
 int /*<<< orphan*/  FUNC0 (size_t,int /*<<< orphan*/ ,scalar_t__) ; 
 int CPU_IS_FIRST_CORE_IN_PACKAGE ; 
 int CPU_IS_FIRST_THREAD_IN_CORE ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FORMAT_DELTA ; 
 scalar_t__ FORMAT_PERCENT ; 
 scalar_t__ FORMAT_RAW ; 
 int RAPL_PER_CORE_ENERGY ; 
 TYPE_5__ average ; 
 double base_hz ; 
 scalar_t__ cpu_subset ; 
 int /*<<< orphan*/  cpu_subset_size ; 
 TYPE_4__* cpus ; 
 int do_rapl ; 
 scalar_t__ has_base_hz ; 
 char* outp ; 
 double rapl_dram_energy_units ; 
 double rapl_energy_units ; 
 double rapl_joule_counter_range ; 
 double rapl_time_units ; 
 scalar_t__ show_core_only ; 
 scalar_t__ show_pkg_only ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,...) ; 
 scalar_t__ sums_need_wide_columns ; 
 TYPE_3__ sys ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int /*<<< orphan*/ *,struct timeval*) ; 
 double tsc_tweak ; 
 double units ; 

int FUNC4(struct thread_data *t, struct core_data *c,
	struct pkg_data *p)
{
	double interval_float, tsc;
	char *fmt8;
	int i;
	struct msr_counter *mp;
	char *delim = "\t";
	int printed = 0;

	 /* if showing only 1st thread in core and this isn't one, bail out */
	if (show_core_only && !(t->flags & CPU_IS_FIRST_THREAD_IN_CORE))
		return 0;

	 /* if showing only 1st thread in pkg and this isn't one, bail out */
	if (show_pkg_only && !(t->flags & CPU_IS_FIRST_CORE_IN_PACKAGE))
		return 0;

	/*if not summary line and --cpu is used */
	if ((t != &average.threads) &&
		(cpu_subset && !FUNC0(t->cpu_id, cpu_subset_size, cpu_subset)))
		return 0;

	if (FUNC1(BIC_USEC)) {
		/* on each row, print how many usec each timestamp took to gather */
		struct timeval tv;

		FUNC3(&t->tv_end, &t->tv_begin, &tv);
		outp += FUNC2(outp, "%5ld\t", tv.tv_sec * 1000000 + tv.tv_usec);
	}

	/* Time_Of_Day_Seconds: on each row, print sec.usec last timestamp taken */
	if (FUNC1(BIC_TOD))
		outp += FUNC2(outp, "%10ld.%06ld\t", t->tv_end.tv_sec, t->tv_end.tv_usec);

	interval_float = t->tv_delta.tv_sec + t->tv_delta.tv_usec/1000000.0;

	tsc = t->tsc * tsc_tweak;

	/* topo columns, print blanks on 1st (average) line */
	if (t == &average.threads) {
		if (FUNC1(BIC_Package))
			outp += FUNC2(outp, "%s-", (printed++ ? delim : ""));
		if (FUNC1(BIC_Die))
			outp += FUNC2(outp, "%s-", (printed++ ? delim : ""));
		if (FUNC1(BIC_Node))
			outp += FUNC2(outp, "%s-", (printed++ ? delim : ""));
		if (FUNC1(BIC_Core))
			outp += FUNC2(outp, "%s-", (printed++ ? delim : ""));
		if (FUNC1(BIC_CPU))
			outp += FUNC2(outp, "%s-", (printed++ ? delim : ""));
		if (FUNC1(BIC_APIC))
			outp += FUNC2(outp, "%s-", (printed++ ? delim : ""));
		if (FUNC1(BIC_X2APIC))
			outp += FUNC2(outp, "%s-", (printed++ ? delim : ""));
	} else {
		if (FUNC1(BIC_Package)) {
			if (p)
				outp += FUNC2(outp, "%s%d", (printed++ ? delim : ""), p->package_id);
			else
				outp += FUNC2(outp, "%s-", (printed++ ? delim : ""));
		}
		if (FUNC1(BIC_Die)) {
			if (c)
				outp += FUNC2(outp, "%s%d", (printed++ ? delim : ""), cpus[t->cpu_id].die_id);
			else
				outp += FUNC2(outp, "%s-", (printed++ ? delim : ""));
		}
		if (FUNC1(BIC_Node)) {
			if (t)
				outp += FUNC2(outp, "%s%d",
						(printed++ ? delim : ""),
					      cpus[t->cpu_id].physical_node_id);
			else
				outp += FUNC2(outp, "%s-",
						(printed++ ? delim : ""));
		}
		if (FUNC1(BIC_Core)) {
			if (c)
				outp += FUNC2(outp, "%s%d", (printed++ ? delim : ""), c->core_id);
			else
				outp += FUNC2(outp, "%s-", (printed++ ? delim : ""));
		}
		if (FUNC1(BIC_CPU))
			outp += FUNC2(outp, "%s%d", (printed++ ? delim : ""), t->cpu_id);
		if (FUNC1(BIC_APIC))
			outp += FUNC2(outp, "%s%d", (printed++ ? delim : ""), t->apic_id);
		if (FUNC1(BIC_X2APIC))
			outp += FUNC2(outp, "%s%d", (printed++ ? delim : ""), t->x2apic_id);
	}

	if (FUNC1(BIC_Avg_MHz))
		outp += FUNC2(outp, "%s%.0f", (printed++ ? delim : ""),
			1.0 / units * t->aperf / interval_float);

	if (FUNC1(BIC_Busy))
		outp += FUNC2(outp, "%s%.2f", (printed++ ? delim : ""), 100.0 * t->mperf/tsc);

	if (FUNC1(BIC_Bzy_MHz)) {
		if (has_base_hz)
			outp += FUNC2(outp, "%s%.0f", (printed++ ? delim : ""), base_hz / units * t->aperf / t->mperf);
		else
			outp += FUNC2(outp, "%s%.0f", (printed++ ? delim : ""),
				tsc / units * t->aperf / t->mperf / interval_float);
	}

	if (FUNC1(BIC_TSC_MHz))
		outp += FUNC2(outp, "%s%.0f", (printed++ ? delim : ""), 1.0 * t->tsc/units/interval_float);

	/* IRQ */
	if (FUNC1(BIC_IRQ)) {
		if (sums_need_wide_columns)
			outp += FUNC2(outp, "%s%8lld", (printed++ ? delim : ""), t->irq_count);
		else
			outp += FUNC2(outp, "%s%lld", (printed++ ? delim : ""), t->irq_count);
	}

	/* SMI */
	if (FUNC1(BIC_SMI))
		outp += FUNC2(outp, "%s%d", (printed++ ? delim : ""), t->smi_count);

	/* Added counters */
	for (i = 0, mp = sys.tp; mp; i++, mp = mp->next) {
		if (mp->format == FORMAT_RAW) {
			if (mp->width == 32)
				outp += FUNC2(outp, "%s0x%08x", (printed++ ? delim : ""), (unsigned int) t->counter[i]);
			else
				outp += FUNC2(outp, "%s0x%016llx", (printed++ ? delim : ""), t->counter[i]);
		} else if (mp->format == FORMAT_DELTA) {
			if ((mp->type == COUNTER_ITEMS) && sums_need_wide_columns)
				outp += FUNC2(outp, "%s%8lld", (printed++ ? delim : ""), t->counter[i]);
			else
				outp += FUNC2(outp, "%s%lld", (printed++ ? delim : ""), t->counter[i]);
		} else if (mp->format == FORMAT_PERCENT) {
			if (mp->type == COUNTER_USEC)
				outp += FUNC2(outp, "%s%.2f", (printed++ ? delim : ""), t->counter[i]/interval_float/10000);
			else
				outp += FUNC2(outp, "%s%.2f", (printed++ ? delim : ""), 100.0 * t->counter[i]/tsc);
		}
	}

	/* C1 */
	if (FUNC1(BIC_CPU_c1))
		outp += FUNC2(outp, "%s%.2f", (printed++ ? delim : ""), 100.0 * t->c1/tsc);


	/* print per-core data only for 1st thread in core */
	if (!(t->flags & CPU_IS_FIRST_THREAD_IN_CORE))
		goto done;

	if (FUNC1(BIC_CPU_c3))
		outp += FUNC2(outp, "%s%.2f", (printed++ ? delim : ""), 100.0 * c->c3/tsc);
	if (FUNC1(BIC_CPU_c6))
		outp += FUNC2(outp, "%s%.2f", (printed++ ? delim : ""), 100.0 * c->c6/tsc);
	if (FUNC1(BIC_CPU_c7))
		outp += FUNC2(outp, "%s%.2f", (printed++ ? delim : ""), 100.0 * c->c7/tsc);

	/* Mod%c6 */
	if (FUNC1(BIC_Mod_c6))
		outp += FUNC2(outp, "%s%.2f", (printed++ ? delim : ""), 100.0 * c->mc6_us / tsc);

	if (FUNC1(BIC_CoreTmp))
		outp += FUNC2(outp, "%s%d", (printed++ ? delim : ""), c->core_temp_c);

	for (i = 0, mp = sys.cp; mp; i++, mp = mp->next) {
		if (mp->format == FORMAT_RAW) {
			if (mp->width == 32)
				outp += FUNC2(outp, "%s0x%08x", (printed++ ? delim : ""), (unsigned int) c->counter[i]);
			else
				outp += FUNC2(outp, "%s0x%016llx", (printed++ ? delim : ""), c->counter[i]);
		} else if (mp->format == FORMAT_DELTA) {
			if ((mp->type == COUNTER_ITEMS) && sums_need_wide_columns)
				outp += FUNC2(outp, "%s%8lld", (printed++ ? delim : ""), c->counter[i]);
			else
				outp += FUNC2(outp, "%s%lld", (printed++ ? delim : ""), c->counter[i]);
		} else if (mp->format == FORMAT_PERCENT) {
			outp += FUNC2(outp, "%s%.2f", (printed++ ? delim : ""), 100.0 * c->counter[i]/tsc);
		}
	}

	/*
	 * If measurement interval exceeds minimum RAPL Joule Counter range,
	 * indicate that results are suspect by printing "**" in fraction place.
	 */
	if (interval_float < rapl_joule_counter_range)
		fmt8 = "%s%.2f";
	else
		fmt8 = "%6.0f**";

	if (FUNC1(BIC_CorWatt) && (do_rapl & RAPL_PER_CORE_ENERGY))
		outp += FUNC2(outp, fmt8, (printed++ ? delim : ""), c->core_energy * rapl_energy_units / interval_float);
	if (FUNC1(BIC_Cor_J) && (do_rapl & RAPL_PER_CORE_ENERGY))
		outp += FUNC2(outp, fmt8, (printed++ ? delim : ""), c->core_energy * rapl_energy_units);

	/* print per-package data only for 1st core in package */
	if (!(t->flags & CPU_IS_FIRST_CORE_IN_PACKAGE))
		goto done;

	/* PkgTmp */
	if (FUNC1(BIC_PkgTmp))
		outp += FUNC2(outp, "%s%d", (printed++ ? delim : ""), p->pkg_temp_c);

	/* GFXrc6 */
	if (FUNC1(BIC_GFX_rc6)) {
		if (p->gfx_rc6_ms == -1) {	/* detect GFX counter reset */
			outp += FUNC2(outp, "%s**.**", (printed++ ? delim : ""));
		} else {
			outp += FUNC2(outp, "%s%.2f", (printed++ ? delim : ""),
				p->gfx_rc6_ms / 10.0 / interval_float);
		}
	}

	/* GFXMHz */
	if (FUNC1(BIC_GFXMHz))
		outp += FUNC2(outp, "%s%d", (printed++ ? delim : ""), p->gfx_mhz);

	/* Totl%C0, Any%C0 GFX%C0 CPUGFX% */
	if (FUNC1(BIC_Totl_c0))
		outp += FUNC2(outp, "%s%.2f", (printed++ ? delim : ""), 100.0 * p->pkg_wtd_core_c0/tsc);
	if (FUNC1(BIC_Any_c0))
		outp += FUNC2(outp, "%s%.2f", (printed++ ? delim : ""), 100.0 * p->pkg_any_core_c0/tsc);
	if (FUNC1(BIC_GFX_c0))
		outp += FUNC2(outp, "%s%.2f", (printed++ ? delim : ""), 100.0 * p->pkg_any_gfxe_c0/tsc);
	if (FUNC1(BIC_CPUGFX))
		outp += FUNC2(outp, "%s%.2f", (printed++ ? delim : ""), 100.0 * p->pkg_both_core_gfxe_c0/tsc);

	if (FUNC1(BIC_Pkgpc2))
		outp += FUNC2(outp, "%s%.2f", (printed++ ? delim : ""), 100.0 * p->pc2/tsc);
	if (FUNC1(BIC_Pkgpc3))
		outp += FUNC2(outp, "%s%.2f", (printed++ ? delim : ""), 100.0 * p->pc3/tsc);
	if (FUNC1(BIC_Pkgpc6))
		outp += FUNC2(outp, "%s%.2f", (printed++ ? delim : ""), 100.0 * p->pc6/tsc);
	if (FUNC1(BIC_Pkgpc7))
		outp += FUNC2(outp, "%s%.2f", (printed++ ? delim : ""), 100.0 * p->pc7/tsc);
	if (FUNC1(BIC_Pkgpc8))
		outp += FUNC2(outp, "%s%.2f", (printed++ ? delim : ""), 100.0 * p->pc8/tsc);
	if (FUNC1(BIC_Pkgpc9))
		outp += FUNC2(outp, "%s%.2f", (printed++ ? delim : ""), 100.0 * p->pc9/tsc);
	if (FUNC1(BIC_Pkgpc10))
		outp += FUNC2(outp, "%s%.2f", (printed++ ? delim : ""), 100.0 * p->pc10/tsc);

	if (FUNC1(BIC_CPU_LPI))
		outp += FUNC2(outp, "%s%.2f", (printed++ ? delim : ""), 100.0 * p->cpu_lpi / 1000000.0 / interval_float);
	if (FUNC1(BIC_SYS_LPI))
		outp += FUNC2(outp, "%s%.2f", (printed++ ? delim : ""), 100.0 * p->sys_lpi / 1000000.0 / interval_float);

	if (FUNC1(BIC_PkgWatt))
		outp += FUNC2(outp, fmt8, (printed++ ? delim : ""), p->energy_pkg * rapl_energy_units / interval_float);
	if (FUNC1(BIC_CorWatt) && !(do_rapl & RAPL_PER_CORE_ENERGY))
		outp += FUNC2(outp, fmt8, (printed++ ? delim : ""), p->energy_cores * rapl_energy_units / interval_float);
	if (FUNC1(BIC_GFXWatt))
		outp += FUNC2(outp, fmt8, (printed++ ? delim : ""), p->energy_gfx * rapl_energy_units / interval_float);
	if (FUNC1(BIC_RAMWatt))
		outp += FUNC2(outp, fmt8, (printed++ ? delim : ""), p->energy_dram * rapl_dram_energy_units / interval_float);
	if (FUNC1(BIC_Pkg_J))
		outp += FUNC2(outp, fmt8, (printed++ ? delim : ""), p->energy_pkg * rapl_energy_units);
	if (FUNC1(BIC_Cor_J) && !(do_rapl & RAPL_PER_CORE_ENERGY))
		outp += FUNC2(outp, fmt8, (printed++ ? delim : ""), p->energy_cores * rapl_energy_units);
	if (FUNC1(BIC_GFX_J))
		outp += FUNC2(outp, fmt8, (printed++ ? delim : ""), p->energy_gfx * rapl_energy_units);
	if (FUNC1(BIC_RAM_J))
		outp += FUNC2(outp, fmt8, (printed++ ? delim : ""), p->energy_dram * rapl_dram_energy_units);
	if (FUNC1(BIC_PKG__))
		outp += FUNC2(outp, fmt8, (printed++ ? delim : ""), 100.0 * p->rapl_pkg_perf_status * rapl_time_units / interval_float);
	if (FUNC1(BIC_RAM__))
		outp += FUNC2(outp, fmt8, (printed++ ? delim : ""), 100.0 * p->rapl_dram_perf_status * rapl_time_units / interval_float);

	for (i = 0, mp = sys.pp; mp; i++, mp = mp->next) {
		if (mp->format == FORMAT_RAW) {
			if (mp->width == 32)
				outp += FUNC2(outp, "%s0x%08x", (printed++ ? delim : ""), (unsigned int) p->counter[i]);
			else
				outp += FUNC2(outp, "%s0x%016llx", (printed++ ? delim : ""), p->counter[i]);
		} else if (mp->format == FORMAT_DELTA) {
			if ((mp->type == COUNTER_ITEMS) && sums_need_wide_columns)
				outp += FUNC2(outp, "%s%8lld", (printed++ ? delim : ""), p->counter[i]);
			else
				outp += FUNC2(outp, "%s%lld", (printed++ ? delim : ""), p->counter[i]);
		} else if (mp->format == FORMAT_PERCENT) {
			outp += FUNC2(outp, "%s%.2f", (printed++ ? delim : ""), 100.0 * p->counter[i]/tsc);
		}
	}

done:
	if (*(outp - 1) != '\n')
		outp += FUNC2(outp, "\n");

	return 0;
}