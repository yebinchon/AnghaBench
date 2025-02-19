
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct thread_data {int cpu_id; int flags; int smi_count; int * counter; int irq_count; int c1; int mperf; int aperf; int tsc; } ;
struct pkg_data {int package_id; int energy_pkg; int energy_cores; int energy_gfx; int energy_dram; int rapl_pkg_perf_status; int rapl_dram_perf_status; int pkg_temp_c; int * counter; int sys_lpi; int cpu_lpi; int pc10; int pc9; int pc8; int pc7; int pc6; int pc3; int pc2; int pkg_both_core_gfxe_c0; int pkg_any_gfxe_c0; int pkg_any_core_c0; int pkg_wtd_core_c0; } ;
struct msr_counter {int msr_num; struct msr_counter* next; } ;
struct core_data {int core_id; int core_temp_c; int core_energy; int mc6_us; int * counter; int c7; int c6; int c3; } ;
struct TYPE_2__ {struct msr_counter* pp; struct msr_counter* cp; struct msr_counter* tp; } ;


 int BIC_IRQ ;
 int BIC_Pkgpc3 ;
 int BIC_Pkgpc6 ;
 int BIC_Pkgpc7 ;
 int BIC_SMI ;
 scalar_t__ DO_BIC (int ) ;
 int outp ;
 scalar_t__ sprintf (int ,char*,...) ;
 TYPE_1__ sys ;

int dump_counters(struct thread_data *t, struct core_data *c,
 struct pkg_data *p)
{
 int i;
 struct msr_counter *mp;

 outp += sprintf(outp, "t %p, c %p, p %p\n", t, c, p);

 if (t) {
  outp += sprintf(outp, "CPU: %d flags 0x%x\n",
   t->cpu_id, t->flags);
  outp += sprintf(outp, "TSC: %016llX\n", t->tsc);
  outp += sprintf(outp, "aperf: %016llX\n", t->aperf);
  outp += sprintf(outp, "mperf: %016llX\n", t->mperf);
  outp += sprintf(outp, "c1: %016llX\n", t->c1);

  if (DO_BIC(BIC_IRQ))
   outp += sprintf(outp, "IRQ: %lld\n", t->irq_count);
  if (DO_BIC(BIC_SMI))
   outp += sprintf(outp, "SMI: %d\n", t->smi_count);

  for (i = 0, mp = sys.tp; mp; i++, mp = mp->next) {
   outp += sprintf(outp, "tADDED [%d] msr0x%x: %08llX\n",
    i, mp->msr_num, t->counter[i]);
  }
 }

 if (c) {
  outp += sprintf(outp, "core: %d\n", c->core_id);
  outp += sprintf(outp, "c3: %016llX\n", c->c3);
  outp += sprintf(outp, "c6: %016llX\n", c->c6);
  outp += sprintf(outp, "c7: %016llX\n", c->c7);
  outp += sprintf(outp, "DTS: %dC\n", c->core_temp_c);
  outp += sprintf(outp, "Joules: %0X\n", c->core_energy);

  for (i = 0, mp = sys.cp; mp; i++, mp = mp->next) {
   outp += sprintf(outp, "cADDED [%d] msr0x%x: %08llX\n",
    i, mp->msr_num, c->counter[i]);
  }
  outp += sprintf(outp, "mc6_us: %016llX\n", c->mc6_us);
 }

 if (p) {
  outp += sprintf(outp, "package: %d\n", p->package_id);

  outp += sprintf(outp, "Weighted cores: %016llX\n", p->pkg_wtd_core_c0);
  outp += sprintf(outp, "Any cores: %016llX\n", p->pkg_any_core_c0);
  outp += sprintf(outp, "Any GFX: %016llX\n", p->pkg_any_gfxe_c0);
  outp += sprintf(outp, "CPU + GFX: %016llX\n", p->pkg_both_core_gfxe_c0);

  outp += sprintf(outp, "pc2: %016llX\n", p->pc2);
  if (DO_BIC(BIC_Pkgpc3))
   outp += sprintf(outp, "pc3: %016llX\n", p->pc3);
  if (DO_BIC(BIC_Pkgpc6))
   outp += sprintf(outp, "pc6: %016llX\n", p->pc6);
  if (DO_BIC(BIC_Pkgpc7))
   outp += sprintf(outp, "pc7: %016llX\n", p->pc7);
  outp += sprintf(outp, "pc8: %016llX\n", p->pc8);
  outp += sprintf(outp, "pc9: %016llX\n", p->pc9);
  outp += sprintf(outp, "pc10: %016llX\n", p->pc10);
  outp += sprintf(outp, "cpu_lpi: %016llX\n", p->cpu_lpi);
  outp += sprintf(outp, "sys_lpi: %016llX\n", p->sys_lpi);
  outp += sprintf(outp, "Joules PKG: %0X\n", p->energy_pkg);
  outp += sprintf(outp, "Joules COR: %0X\n", p->energy_cores);
  outp += sprintf(outp, "Joules GFX: %0X\n", p->energy_gfx);
  outp += sprintf(outp, "Joules RAM: %0X\n", p->energy_dram);
  outp += sprintf(outp, "Throttle PKG: %0X\n",
   p->rapl_pkg_perf_status);
  outp += sprintf(outp, "Throttle RAM: %0X\n",
   p->rapl_dram_perf_status);
  outp += sprintf(outp, "PTM: %dC\n", p->pkg_temp_c);

  for (i = 0, mp = sys.pp; mp; i++, mp = mp->next) {
   outp += sprintf(outp, "pADDED [%d] msr0x%x: %08llX\n",
    i, mp->msr_num, p->counter[i]);
  }
 }

 outp += sprintf(outp, "\n");

 return 0;
}
