
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct timeval {int tv_sec; scalar_t__ tv_usec; } ;
struct TYPE_6__ {double tv_sec; double tv_usec; } ;
struct TYPE_7__ {int tv_usec; int tv_sec; } ;
struct thread_data {int flags; size_t cpu_id; double tsc; double aperf; double mperf; double* counter; double c1; int smi_count; int irq_count; int x2apic_id; int apic_id; TYPE_1__ tv_delta; TYPE_2__ tv_end; int tv_begin; } ;
struct pkg_data {int gfx_rc6_ms; double pkg_wtd_core_c0; double pkg_any_core_c0; double pkg_any_gfxe_c0; double pkg_both_core_gfxe_c0; double pc2; double pc3; double pc6; double pc7; double pc8; double pc9; double pc10; double cpu_lpi; double sys_lpi; double energy_pkg; double energy_cores; double energy_gfx; double energy_dram; double rapl_pkg_perf_status; double rapl_dram_perf_status; double* counter; int gfx_mhz; int pkg_temp_c; int package_id; } ;
struct msr_counter {scalar_t__ format; int width; scalar_t__ type; struct msr_counter* next; } ;
struct core_data {double c3; double c6; double c7; double mc6_us; double* counter; double core_energy; int core_temp_c; int core_id; } ;
struct TYPE_10__ {struct thread_data threads; } ;
struct TYPE_9__ {int physical_node_id; int die_id; } ;
struct TYPE_8__ {struct msr_counter* pp; struct msr_counter* cp; struct msr_counter* tp; } ;


 int BIC_APIC ;
 int BIC_Any_c0 ;
 int BIC_Avg_MHz ;
 int BIC_Busy ;
 int BIC_Bzy_MHz ;
 int BIC_CPU ;
 int BIC_CPUGFX ;
 int BIC_CPU_LPI ;
 int BIC_CPU_c1 ;
 int BIC_CPU_c3 ;
 int BIC_CPU_c6 ;
 int BIC_CPU_c7 ;
 int BIC_CorWatt ;
 int BIC_Cor_J ;
 int BIC_Core ;
 int BIC_CoreTmp ;
 int BIC_Die ;
 int BIC_GFXMHz ;
 int BIC_GFXWatt ;
 int BIC_GFX_J ;
 int BIC_GFX_c0 ;
 int BIC_GFX_rc6 ;
 int BIC_IRQ ;
 int BIC_Mod_c6 ;
 int BIC_Node ;
 int BIC_PKG__ ;
 int BIC_Package ;
 int BIC_PkgTmp ;
 int BIC_PkgWatt ;
 int BIC_Pkg_J ;
 int BIC_Pkgpc10 ;
 int BIC_Pkgpc2 ;
 int BIC_Pkgpc3 ;
 int BIC_Pkgpc6 ;
 int BIC_Pkgpc7 ;
 int BIC_Pkgpc8 ;
 int BIC_Pkgpc9 ;
 int BIC_RAMWatt ;
 int BIC_RAM_J ;
 int BIC_RAM__ ;
 int BIC_SMI ;
 int BIC_SYS_LPI ;
 int BIC_TOD ;
 int BIC_TSC_MHz ;
 int BIC_Totl_c0 ;
 int BIC_USEC ;
 int BIC_X2APIC ;
 scalar_t__ COUNTER_ITEMS ;
 scalar_t__ COUNTER_USEC ;
 int CPU_ISSET_S (size_t,int ,scalar_t__) ;
 int CPU_IS_FIRST_CORE_IN_PACKAGE ;
 int CPU_IS_FIRST_THREAD_IN_CORE ;
 scalar_t__ DO_BIC (int ) ;
 scalar_t__ FORMAT_DELTA ;
 scalar_t__ FORMAT_PERCENT ;
 scalar_t__ FORMAT_RAW ;
 int RAPL_PER_CORE_ENERGY ;
 TYPE_5__ average ;
 double base_hz ;
 scalar_t__ cpu_subset ;
 int cpu_subset_size ;
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
 int sprintf (char*,char*,...) ;
 scalar_t__ sums_need_wide_columns ;
 TYPE_3__ sys ;
 int timersub (TYPE_2__*,int *,struct timeval*) ;
 double tsc_tweak ;
 double units ;

int format_counters(struct thread_data *t, struct core_data *c,
 struct pkg_data *p)
{
 double interval_float, tsc;
 char *fmt8;
 int i;
 struct msr_counter *mp;
 char *delim = "\t";
 int printed = 0;


 if (show_core_only && !(t->flags & CPU_IS_FIRST_THREAD_IN_CORE))
  return 0;


 if (show_pkg_only && !(t->flags & CPU_IS_FIRST_CORE_IN_PACKAGE))
  return 0;


 if ((t != &average.threads) &&
  (cpu_subset && !CPU_ISSET_S(t->cpu_id, cpu_subset_size, cpu_subset)))
  return 0;

 if (DO_BIC(BIC_USEC)) {

  struct timeval tv;

  timersub(&t->tv_end, &t->tv_begin, &tv);
  outp += sprintf(outp, "%5ld\t", tv.tv_sec * 1000000 + tv.tv_usec);
 }


 if (DO_BIC(BIC_TOD))
  outp += sprintf(outp, "%10ld.%06ld\t", t->tv_end.tv_sec, t->tv_end.tv_usec);

 interval_float = t->tv_delta.tv_sec + t->tv_delta.tv_usec/1000000.0;

 tsc = t->tsc * tsc_tweak;


 if (t == &average.threads) {
  if (DO_BIC(BIC_Package))
   outp += sprintf(outp, "%s-", (printed++ ? delim : ""));
  if (DO_BIC(BIC_Die))
   outp += sprintf(outp, "%s-", (printed++ ? delim : ""));
  if (DO_BIC(BIC_Node))
   outp += sprintf(outp, "%s-", (printed++ ? delim : ""));
  if (DO_BIC(BIC_Core))
   outp += sprintf(outp, "%s-", (printed++ ? delim : ""));
  if (DO_BIC(BIC_CPU))
   outp += sprintf(outp, "%s-", (printed++ ? delim : ""));
  if (DO_BIC(BIC_APIC))
   outp += sprintf(outp, "%s-", (printed++ ? delim : ""));
  if (DO_BIC(BIC_X2APIC))
   outp += sprintf(outp, "%s-", (printed++ ? delim : ""));
 } else {
  if (DO_BIC(BIC_Package)) {
   if (p)
    outp += sprintf(outp, "%s%d", (printed++ ? delim : ""), p->package_id);
   else
    outp += sprintf(outp, "%s-", (printed++ ? delim : ""));
  }
  if (DO_BIC(BIC_Die)) {
   if (c)
    outp += sprintf(outp, "%s%d", (printed++ ? delim : ""), cpus[t->cpu_id].die_id);
   else
    outp += sprintf(outp, "%s-", (printed++ ? delim : ""));
  }
  if (DO_BIC(BIC_Node)) {
   if (t)
    outp += sprintf(outp, "%s%d",
      (printed++ ? delim : ""),
           cpus[t->cpu_id].physical_node_id);
   else
    outp += sprintf(outp, "%s-",
      (printed++ ? delim : ""));
  }
  if (DO_BIC(BIC_Core)) {
   if (c)
    outp += sprintf(outp, "%s%d", (printed++ ? delim : ""), c->core_id);
   else
    outp += sprintf(outp, "%s-", (printed++ ? delim : ""));
  }
  if (DO_BIC(BIC_CPU))
   outp += sprintf(outp, "%s%d", (printed++ ? delim : ""), t->cpu_id);
  if (DO_BIC(BIC_APIC))
   outp += sprintf(outp, "%s%d", (printed++ ? delim : ""), t->apic_id);
  if (DO_BIC(BIC_X2APIC))
   outp += sprintf(outp, "%s%d", (printed++ ? delim : ""), t->x2apic_id);
 }

 if (DO_BIC(BIC_Avg_MHz))
  outp += sprintf(outp, "%s%.0f", (printed++ ? delim : ""),
   1.0 / units * t->aperf / interval_float);

 if (DO_BIC(BIC_Busy))
  outp += sprintf(outp, "%s%.2f", (printed++ ? delim : ""), 100.0 * t->mperf/tsc);

 if (DO_BIC(BIC_Bzy_MHz)) {
  if (has_base_hz)
   outp += sprintf(outp, "%s%.0f", (printed++ ? delim : ""), base_hz / units * t->aperf / t->mperf);
  else
   outp += sprintf(outp, "%s%.0f", (printed++ ? delim : ""),
    tsc / units * t->aperf / t->mperf / interval_float);
 }

 if (DO_BIC(BIC_TSC_MHz))
  outp += sprintf(outp, "%s%.0f", (printed++ ? delim : ""), 1.0 * t->tsc/units/interval_float);


 if (DO_BIC(BIC_IRQ)) {
  if (sums_need_wide_columns)
   outp += sprintf(outp, "%s%8lld", (printed++ ? delim : ""), t->irq_count);
  else
   outp += sprintf(outp, "%s%lld", (printed++ ? delim : ""), t->irq_count);
 }


 if (DO_BIC(BIC_SMI))
  outp += sprintf(outp, "%s%d", (printed++ ? delim : ""), t->smi_count);


 for (i = 0, mp = sys.tp; mp; i++, mp = mp->next) {
  if (mp->format == FORMAT_RAW) {
   if (mp->width == 32)
    outp += sprintf(outp, "%s0x%08x", (printed++ ? delim : ""), (unsigned int) t->counter[i]);
   else
    outp += sprintf(outp, "%s0x%016llx", (printed++ ? delim : ""), t->counter[i]);
  } else if (mp->format == FORMAT_DELTA) {
   if ((mp->type == COUNTER_ITEMS) && sums_need_wide_columns)
    outp += sprintf(outp, "%s%8lld", (printed++ ? delim : ""), t->counter[i]);
   else
    outp += sprintf(outp, "%s%lld", (printed++ ? delim : ""), t->counter[i]);
  } else if (mp->format == FORMAT_PERCENT) {
   if (mp->type == COUNTER_USEC)
    outp += sprintf(outp, "%s%.2f", (printed++ ? delim : ""), t->counter[i]/interval_float/10000);
   else
    outp += sprintf(outp, "%s%.2f", (printed++ ? delim : ""), 100.0 * t->counter[i]/tsc);
  }
 }


 if (DO_BIC(BIC_CPU_c1))
  outp += sprintf(outp, "%s%.2f", (printed++ ? delim : ""), 100.0 * t->c1/tsc);



 if (!(t->flags & CPU_IS_FIRST_THREAD_IN_CORE))
  goto done;

 if (DO_BIC(BIC_CPU_c3))
  outp += sprintf(outp, "%s%.2f", (printed++ ? delim : ""), 100.0 * c->c3/tsc);
 if (DO_BIC(BIC_CPU_c6))
  outp += sprintf(outp, "%s%.2f", (printed++ ? delim : ""), 100.0 * c->c6/tsc);
 if (DO_BIC(BIC_CPU_c7))
  outp += sprintf(outp, "%s%.2f", (printed++ ? delim : ""), 100.0 * c->c7/tsc);


 if (DO_BIC(BIC_Mod_c6))
  outp += sprintf(outp, "%s%.2f", (printed++ ? delim : ""), 100.0 * c->mc6_us / tsc);

 if (DO_BIC(BIC_CoreTmp))
  outp += sprintf(outp, "%s%d", (printed++ ? delim : ""), c->core_temp_c);

 for (i = 0, mp = sys.cp; mp; i++, mp = mp->next) {
  if (mp->format == FORMAT_RAW) {
   if (mp->width == 32)
    outp += sprintf(outp, "%s0x%08x", (printed++ ? delim : ""), (unsigned int) c->counter[i]);
   else
    outp += sprintf(outp, "%s0x%016llx", (printed++ ? delim : ""), c->counter[i]);
  } else if (mp->format == FORMAT_DELTA) {
   if ((mp->type == COUNTER_ITEMS) && sums_need_wide_columns)
    outp += sprintf(outp, "%s%8lld", (printed++ ? delim : ""), c->counter[i]);
   else
    outp += sprintf(outp, "%s%lld", (printed++ ? delim : ""), c->counter[i]);
  } else if (mp->format == FORMAT_PERCENT) {
   outp += sprintf(outp, "%s%.2f", (printed++ ? delim : ""), 100.0 * c->counter[i]/tsc);
  }
 }





 if (interval_float < rapl_joule_counter_range)
  fmt8 = "%s%.2f";
 else
  fmt8 = "%6.0f**";

 if (DO_BIC(BIC_CorWatt) && (do_rapl & RAPL_PER_CORE_ENERGY))
  outp += sprintf(outp, fmt8, (printed++ ? delim : ""), c->core_energy * rapl_energy_units / interval_float);
 if (DO_BIC(BIC_Cor_J) && (do_rapl & RAPL_PER_CORE_ENERGY))
  outp += sprintf(outp, fmt8, (printed++ ? delim : ""), c->core_energy * rapl_energy_units);


 if (!(t->flags & CPU_IS_FIRST_CORE_IN_PACKAGE))
  goto done;


 if (DO_BIC(BIC_PkgTmp))
  outp += sprintf(outp, "%s%d", (printed++ ? delim : ""), p->pkg_temp_c);


 if (DO_BIC(BIC_GFX_rc6)) {
  if (p->gfx_rc6_ms == -1) {
   outp += sprintf(outp, "%s**.**", (printed++ ? delim : ""));
  } else {
   outp += sprintf(outp, "%s%.2f", (printed++ ? delim : ""),
    p->gfx_rc6_ms / 10.0 / interval_float);
  }
 }


 if (DO_BIC(BIC_GFXMHz))
  outp += sprintf(outp, "%s%d", (printed++ ? delim : ""), p->gfx_mhz);


 if (DO_BIC(BIC_Totl_c0))
  outp += sprintf(outp, "%s%.2f", (printed++ ? delim : ""), 100.0 * p->pkg_wtd_core_c0/tsc);
 if (DO_BIC(BIC_Any_c0))
  outp += sprintf(outp, "%s%.2f", (printed++ ? delim : ""), 100.0 * p->pkg_any_core_c0/tsc);
 if (DO_BIC(BIC_GFX_c0))
  outp += sprintf(outp, "%s%.2f", (printed++ ? delim : ""), 100.0 * p->pkg_any_gfxe_c0/tsc);
 if (DO_BIC(BIC_CPUGFX))
  outp += sprintf(outp, "%s%.2f", (printed++ ? delim : ""), 100.0 * p->pkg_both_core_gfxe_c0/tsc);

 if (DO_BIC(BIC_Pkgpc2))
  outp += sprintf(outp, "%s%.2f", (printed++ ? delim : ""), 100.0 * p->pc2/tsc);
 if (DO_BIC(BIC_Pkgpc3))
  outp += sprintf(outp, "%s%.2f", (printed++ ? delim : ""), 100.0 * p->pc3/tsc);
 if (DO_BIC(BIC_Pkgpc6))
  outp += sprintf(outp, "%s%.2f", (printed++ ? delim : ""), 100.0 * p->pc6/tsc);
 if (DO_BIC(BIC_Pkgpc7))
  outp += sprintf(outp, "%s%.2f", (printed++ ? delim : ""), 100.0 * p->pc7/tsc);
 if (DO_BIC(BIC_Pkgpc8))
  outp += sprintf(outp, "%s%.2f", (printed++ ? delim : ""), 100.0 * p->pc8/tsc);
 if (DO_BIC(BIC_Pkgpc9))
  outp += sprintf(outp, "%s%.2f", (printed++ ? delim : ""), 100.0 * p->pc9/tsc);
 if (DO_BIC(BIC_Pkgpc10))
  outp += sprintf(outp, "%s%.2f", (printed++ ? delim : ""), 100.0 * p->pc10/tsc);

 if (DO_BIC(BIC_CPU_LPI))
  outp += sprintf(outp, "%s%.2f", (printed++ ? delim : ""), 100.0 * p->cpu_lpi / 1000000.0 / interval_float);
 if (DO_BIC(BIC_SYS_LPI))
  outp += sprintf(outp, "%s%.2f", (printed++ ? delim : ""), 100.0 * p->sys_lpi / 1000000.0 / interval_float);

 if (DO_BIC(BIC_PkgWatt))
  outp += sprintf(outp, fmt8, (printed++ ? delim : ""), p->energy_pkg * rapl_energy_units / interval_float);
 if (DO_BIC(BIC_CorWatt) && !(do_rapl & RAPL_PER_CORE_ENERGY))
  outp += sprintf(outp, fmt8, (printed++ ? delim : ""), p->energy_cores * rapl_energy_units / interval_float);
 if (DO_BIC(BIC_GFXWatt))
  outp += sprintf(outp, fmt8, (printed++ ? delim : ""), p->energy_gfx * rapl_energy_units / interval_float);
 if (DO_BIC(BIC_RAMWatt))
  outp += sprintf(outp, fmt8, (printed++ ? delim : ""), p->energy_dram * rapl_dram_energy_units / interval_float);
 if (DO_BIC(BIC_Pkg_J))
  outp += sprintf(outp, fmt8, (printed++ ? delim : ""), p->energy_pkg * rapl_energy_units);
 if (DO_BIC(BIC_Cor_J) && !(do_rapl & RAPL_PER_CORE_ENERGY))
  outp += sprintf(outp, fmt8, (printed++ ? delim : ""), p->energy_cores * rapl_energy_units);
 if (DO_BIC(BIC_GFX_J))
  outp += sprintf(outp, fmt8, (printed++ ? delim : ""), p->energy_gfx * rapl_energy_units);
 if (DO_BIC(BIC_RAM_J))
  outp += sprintf(outp, fmt8, (printed++ ? delim : ""), p->energy_dram * rapl_dram_energy_units);
 if (DO_BIC(BIC_PKG__))
  outp += sprintf(outp, fmt8, (printed++ ? delim : ""), 100.0 * p->rapl_pkg_perf_status * rapl_time_units / interval_float);
 if (DO_BIC(BIC_RAM__))
  outp += sprintf(outp, fmt8, (printed++ ? delim : ""), 100.0 * p->rapl_dram_perf_status * rapl_time_units / interval_float);

 for (i = 0, mp = sys.pp; mp; i++, mp = mp->next) {
  if (mp->format == FORMAT_RAW) {
   if (mp->width == 32)
    outp += sprintf(outp, "%s0x%08x", (printed++ ? delim : ""), (unsigned int) p->counter[i]);
   else
    outp += sprintf(outp, "%s0x%016llx", (printed++ ? delim : ""), p->counter[i]);
  } else if (mp->format == FORMAT_DELTA) {
   if ((mp->type == COUNTER_ITEMS) && sums_need_wide_columns)
    outp += sprintf(outp, "%s%8lld", (printed++ ? delim : ""), p->counter[i]);
   else
    outp += sprintf(outp, "%s%lld", (printed++ ? delim : ""), p->counter[i]);
  } else if (mp->format == FORMAT_PERCENT) {
   outp += sprintf(outp, "%s%.2f", (printed++ ? delim : ""), 100.0 * p->counter[i]/tsc);
  }
 }

done:
 if (*(outp - 1) != '\n')
  outp += sprintf(outp, "\n");

 return 0;
}
