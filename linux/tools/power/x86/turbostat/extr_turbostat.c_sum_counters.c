
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ tv_sec; } ;
struct thread_data {int flags; scalar_t__* counter; scalar_t__ smi_count; scalar_t__ irq_count; scalar_t__ c1; scalar_t__ mperf; scalar_t__ aperf; scalar_t__ tsc; int tv_end; TYPE_1__ tv_begin; int x2apic_id; int apic_id; } ;
struct pkg_data {scalar_t__* counter; scalar_t__ rapl_dram_perf_status; scalar_t__ rapl_pkg_perf_status; int pkg_temp_c; int gfx_mhz; int gfx_rc6_ms; scalar_t__ energy_gfx; scalar_t__ energy_cores; scalar_t__ energy_dram; scalar_t__ energy_pkg; int sys_lpi; int cpu_lpi; scalar_t__ pc10; scalar_t__ pc9; scalar_t__ pc8; scalar_t__ pc7; scalar_t__ pc6; scalar_t__ pc3; scalar_t__ pc2; scalar_t__ pkg_both_core_gfxe_c0; scalar_t__ pkg_any_gfxe_c0; scalar_t__ pkg_any_core_c0; scalar_t__ pkg_wtd_core_c0; } ;
struct msr_counter {scalar_t__ format; struct msr_counter* next; } ;
struct core_data {scalar_t__* counter; scalar_t__ core_energy; int core_temp_c; scalar_t__ mc6_us; scalar_t__ c7; scalar_t__ c6; scalar_t__ c3; } ;
struct TYPE_10__ {int * counter; int rapl_dram_perf_status; int rapl_pkg_perf_status; void* pkg_temp_c; int gfx_mhz; int gfx_rc6_ms; int energy_gfx; int energy_cores; int energy_dram; int energy_pkg; int sys_lpi; int cpu_lpi; int pc10; int pc9; int pc8; int pc7; int pc6; int pc3; int pc2; int pkg_both_core_gfxe_c0; int pkg_any_gfxe_c0; int pkg_any_core_c0; int pkg_wtd_core_c0; } ;
struct TYPE_9__ {int * counter; int core_energy; void* core_temp_c; int mc6_us; int c7; int c6; int c3; } ;
struct TYPE_8__ {int * counter; int smi_count; int irq_count; int c1; int mperf; int aperf; int tsc; int tv_end; TYPE_1__ tv_begin; int x2apic_id; int apic_id; } ;
struct TYPE_12__ {TYPE_4__ packages; TYPE_3__ cores; TYPE_2__ threads; } ;
struct TYPE_11__ {struct msr_counter* pp; struct msr_counter* cp; struct msr_counter* tp; } ;


 int BIC_APIC ;
 int BIC_Any_c0 ;
 int BIC_CPUGFX ;
 int BIC_GFX_c0 ;
 int BIC_Pkgpc3 ;
 int BIC_Pkgpc6 ;
 int BIC_Pkgpc7 ;
 int BIC_Totl_c0 ;
 int BIC_X2APIC ;
 int CPU_IS_FIRST_CORE_IN_PACKAGE ;
 int CPU_IS_FIRST_THREAD_IN_CORE ;
 scalar_t__ DO_BIC (int ) ;
 scalar_t__ FORMAT_RAW ;
 void* MAX (void*,int ) ;
 TYPE_6__ average ;
 TYPE_5__ sys ;

int sum_counters(struct thread_data *t, struct core_data *c,
 struct pkg_data *p)
{
 int i;
 struct msr_counter *mp;


 if (DO_BIC(BIC_APIC))
  average.threads.apic_id = t->apic_id;
 if (DO_BIC(BIC_X2APIC))
  average.threads.x2apic_id = t->x2apic_id;


 if (average.threads.tv_begin.tv_sec == 0)
  average.threads.tv_begin = t->tv_begin;


 average.threads.tv_end = t->tv_end;

 average.threads.tsc += t->tsc;
 average.threads.aperf += t->aperf;
 average.threads.mperf += t->mperf;
 average.threads.c1 += t->c1;

 average.threads.irq_count += t->irq_count;
 average.threads.smi_count += t->smi_count;

 for (i = 0, mp = sys.tp; mp; i++, mp = mp->next) {
  if (mp->format == FORMAT_RAW)
   continue;
  average.threads.counter[i] += t->counter[i];
 }


 if (!(t->flags & CPU_IS_FIRST_THREAD_IN_CORE))
  return 0;

 average.cores.c3 += c->c3;
 average.cores.c6 += c->c6;
 average.cores.c7 += c->c7;
 average.cores.mc6_us += c->mc6_us;

 average.cores.core_temp_c = MAX(average.cores.core_temp_c, c->core_temp_c);

 average.cores.core_energy += c->core_energy;

 for (i = 0, mp = sys.cp; mp; i++, mp = mp->next) {
  if (mp->format == FORMAT_RAW)
   continue;
  average.cores.counter[i] += c->counter[i];
 }


 if (!(t->flags & CPU_IS_FIRST_CORE_IN_PACKAGE))
  return 0;

 if (DO_BIC(BIC_Totl_c0))
  average.packages.pkg_wtd_core_c0 += p->pkg_wtd_core_c0;
 if (DO_BIC(BIC_Any_c0))
  average.packages.pkg_any_core_c0 += p->pkg_any_core_c0;
 if (DO_BIC(BIC_GFX_c0))
  average.packages.pkg_any_gfxe_c0 += p->pkg_any_gfxe_c0;
 if (DO_BIC(BIC_CPUGFX))
  average.packages.pkg_both_core_gfxe_c0 += p->pkg_both_core_gfxe_c0;

 average.packages.pc2 += p->pc2;
 if (DO_BIC(BIC_Pkgpc3))
  average.packages.pc3 += p->pc3;
 if (DO_BIC(BIC_Pkgpc6))
  average.packages.pc6 += p->pc6;
 if (DO_BIC(BIC_Pkgpc7))
  average.packages.pc7 += p->pc7;
 average.packages.pc8 += p->pc8;
 average.packages.pc9 += p->pc9;
 average.packages.pc10 += p->pc10;

 average.packages.cpu_lpi = p->cpu_lpi;
 average.packages.sys_lpi = p->sys_lpi;

 average.packages.energy_pkg += p->energy_pkg;
 average.packages.energy_dram += p->energy_dram;
 average.packages.energy_cores += p->energy_cores;
 average.packages.energy_gfx += p->energy_gfx;

 average.packages.gfx_rc6_ms = p->gfx_rc6_ms;
 average.packages.gfx_mhz = p->gfx_mhz;

 average.packages.pkg_temp_c = MAX(average.packages.pkg_temp_c, p->pkg_temp_c);

 average.packages.rapl_pkg_perf_status += p->rapl_pkg_perf_status;
 average.packages.rapl_dram_perf_status += p->rapl_dram_perf_status;

 for (i = 0, mp = sys.pp; mp; i++, mp = mp->next) {
  if (mp->format == FORMAT_RAW)
   continue;
  average.packages.counter[i] += p->counter[i];
 }
 return 0;
}
