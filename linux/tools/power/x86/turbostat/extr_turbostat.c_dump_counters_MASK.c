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
struct thread_data {int cpu_id; int flags; int smi_count; int /*<<< orphan*/ * counter; int /*<<< orphan*/  irq_count; int /*<<< orphan*/  c1; int /*<<< orphan*/  mperf; int /*<<< orphan*/  aperf; int /*<<< orphan*/  tsc; } ;
struct pkg_data {int package_id; int energy_pkg; int energy_cores; int energy_gfx; int energy_dram; int rapl_pkg_perf_status; int rapl_dram_perf_status; int pkg_temp_c; int /*<<< orphan*/ * counter; int /*<<< orphan*/  sys_lpi; int /*<<< orphan*/  cpu_lpi; int /*<<< orphan*/  pc10; int /*<<< orphan*/  pc9; int /*<<< orphan*/  pc8; int /*<<< orphan*/  pc7; int /*<<< orphan*/  pc6; int /*<<< orphan*/  pc3; int /*<<< orphan*/  pc2; int /*<<< orphan*/  pkg_both_core_gfxe_c0; int /*<<< orphan*/  pkg_any_gfxe_c0; int /*<<< orphan*/  pkg_any_core_c0; int /*<<< orphan*/  pkg_wtd_core_c0; } ;
struct msr_counter {int msr_num; struct msr_counter* next; } ;
struct core_data {int core_id; int core_temp_c; int core_energy; int /*<<< orphan*/  mc6_us; int /*<<< orphan*/ * counter; int /*<<< orphan*/  c7; int /*<<< orphan*/  c6; int /*<<< orphan*/  c3; } ;
struct TYPE_2__ {struct msr_counter* pp; struct msr_counter* cp; struct msr_counter* tp; } ;

/* Variables and functions */
 int /*<<< orphan*/  BIC_IRQ ; 
 int /*<<< orphan*/  BIC_Pkgpc3 ; 
 int /*<<< orphan*/  BIC_Pkgpc6 ; 
 int /*<<< orphan*/  BIC_Pkgpc7 ; 
 int /*<<< orphan*/  BIC_SMI ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  outp ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 TYPE_1__ sys ; 

int FUNC2(struct thread_data *t, struct core_data *c,
	struct pkg_data *p)
{
	int i;
	struct msr_counter *mp;

	outp += FUNC1(outp, "t %p, c %p, p %p\n", t, c, p);

	if (t) {
		outp += FUNC1(outp, "CPU: %d flags 0x%x\n",
			t->cpu_id, t->flags);
		outp += FUNC1(outp, "TSC: %016llX\n", t->tsc);
		outp += FUNC1(outp, "aperf: %016llX\n", t->aperf);
		outp += FUNC1(outp, "mperf: %016llX\n", t->mperf);
		outp += FUNC1(outp, "c1: %016llX\n", t->c1);

		if (FUNC0(BIC_IRQ))
			outp += FUNC1(outp, "IRQ: %lld\n", t->irq_count);
		if (FUNC0(BIC_SMI))
			outp += FUNC1(outp, "SMI: %d\n", t->smi_count);

		for (i = 0, mp = sys.tp; mp; i++, mp = mp->next) {
			outp += FUNC1(outp, "tADDED [%d] msr0x%x: %08llX\n",
				i, mp->msr_num, t->counter[i]);
		}
	}

	if (c) {
		outp += FUNC1(outp, "core: %d\n", c->core_id);
		outp += FUNC1(outp, "c3: %016llX\n", c->c3);
		outp += FUNC1(outp, "c6: %016llX\n", c->c6);
		outp += FUNC1(outp, "c7: %016llX\n", c->c7);
		outp += FUNC1(outp, "DTS: %dC\n", c->core_temp_c);
		outp += FUNC1(outp, "Joules: %0X\n", c->core_energy);

		for (i = 0, mp = sys.cp; mp; i++, mp = mp->next) {
			outp += FUNC1(outp, "cADDED [%d] msr0x%x: %08llX\n",
				i, mp->msr_num, c->counter[i]);
		}
		outp += FUNC1(outp, "mc6_us: %016llX\n", c->mc6_us);
	}

	if (p) {
		outp += FUNC1(outp, "package: %d\n", p->package_id);

		outp += FUNC1(outp, "Weighted cores: %016llX\n", p->pkg_wtd_core_c0);
		outp += FUNC1(outp, "Any cores: %016llX\n", p->pkg_any_core_c0);
		outp += FUNC1(outp, "Any GFX: %016llX\n", p->pkg_any_gfxe_c0);
		outp += FUNC1(outp, "CPU + GFX: %016llX\n", p->pkg_both_core_gfxe_c0);

		outp += FUNC1(outp, "pc2: %016llX\n", p->pc2);
		if (FUNC0(BIC_Pkgpc3))
			outp += FUNC1(outp, "pc3: %016llX\n", p->pc3);
		if (FUNC0(BIC_Pkgpc6))
			outp += FUNC1(outp, "pc6: %016llX\n", p->pc6);
		if (FUNC0(BIC_Pkgpc7))
			outp += FUNC1(outp, "pc7: %016llX\n", p->pc7);
		outp += FUNC1(outp, "pc8: %016llX\n", p->pc8);
		outp += FUNC1(outp, "pc9: %016llX\n", p->pc9);
		outp += FUNC1(outp, "pc10: %016llX\n", p->pc10);
		outp += FUNC1(outp, "cpu_lpi: %016llX\n", p->cpu_lpi);
		outp += FUNC1(outp, "sys_lpi: %016llX\n", p->sys_lpi);
		outp += FUNC1(outp, "Joules PKG: %0X\n", p->energy_pkg);
		outp += FUNC1(outp, "Joules COR: %0X\n", p->energy_cores);
		outp += FUNC1(outp, "Joules GFX: %0X\n", p->energy_gfx);
		outp += FUNC1(outp, "Joules RAM: %0X\n", p->energy_dram);
		outp += FUNC1(outp, "Throttle PKG: %0X\n",
			p->rapl_pkg_perf_status);
		outp += FUNC1(outp, "Throttle RAM: %0X\n",
			p->rapl_dram_perf_status);
		outp += FUNC1(outp, "PTM: %dC\n", p->pkg_temp_c);

		for (i = 0, mp = sys.pp; mp; i++, mp = mp->next) {
			outp += FUNC1(outp, "pADDED [%d] msr0x%x: %08llX\n",
				i, mp->msr_num, p->counter[i]);
		}
	}

	outp += FUNC1(outp, "\n");

	return 0;
}