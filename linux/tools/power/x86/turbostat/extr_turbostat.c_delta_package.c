
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pkg_data {int gfx_rc6_ms; scalar_t__* counter; int rapl_dram_perf_status; int rapl_pkg_perf_status; int energy_dram; int energy_gfx; int energy_cores; int energy_pkg; int gfx_mhz; int pkg_temp_c; scalar_t__ sys_lpi; scalar_t__ cpu_lpi; scalar_t__ pc10; scalar_t__ pc9; scalar_t__ pc8; scalar_t__ pc7; scalar_t__ pc6; scalar_t__ pc3; scalar_t__ pc2; scalar_t__ pkg_both_core_gfxe_c0; scalar_t__ pkg_any_gfxe_c0; scalar_t__ pkg_any_core_c0; scalar_t__ pkg_wtd_core_c0; } ;
struct msr_counter {scalar_t__ format; struct msr_counter* next; } ;
struct TYPE_2__ {struct msr_counter* pp; } ;


 int BIC_Any_c0 ;
 int BIC_CPUGFX ;
 int BIC_GFX_c0 ;
 int BIC_Pkgpc3 ;
 int BIC_Pkgpc6 ;
 int BIC_Pkgpc7 ;
 int BIC_Totl_c0 ;
 int DELTA_WRAP32 (int ,int ) ;
 scalar_t__ DO_BIC (int ) ;
 scalar_t__ FORMAT_RAW ;
 TYPE_1__ sys ;

int
delta_package(struct pkg_data *new, struct pkg_data *old)
{
 int i;
 struct msr_counter *mp;


 if (DO_BIC(BIC_Totl_c0))
  old->pkg_wtd_core_c0 = new->pkg_wtd_core_c0 - old->pkg_wtd_core_c0;
 if (DO_BIC(BIC_Any_c0))
  old->pkg_any_core_c0 = new->pkg_any_core_c0 - old->pkg_any_core_c0;
 if (DO_BIC(BIC_GFX_c0))
  old->pkg_any_gfxe_c0 = new->pkg_any_gfxe_c0 - old->pkg_any_gfxe_c0;
 if (DO_BIC(BIC_CPUGFX))
  old->pkg_both_core_gfxe_c0 = new->pkg_both_core_gfxe_c0 - old->pkg_both_core_gfxe_c0;

 old->pc2 = new->pc2 - old->pc2;
 if (DO_BIC(BIC_Pkgpc3))
  old->pc3 = new->pc3 - old->pc3;
 if (DO_BIC(BIC_Pkgpc6))
  old->pc6 = new->pc6 - old->pc6;
 if (DO_BIC(BIC_Pkgpc7))
  old->pc7 = new->pc7 - old->pc7;
 old->pc8 = new->pc8 - old->pc8;
 old->pc9 = new->pc9 - old->pc9;
 old->pc10 = new->pc10 - old->pc10;
 old->cpu_lpi = new->cpu_lpi - old->cpu_lpi;
 old->sys_lpi = new->sys_lpi - old->sys_lpi;
 old->pkg_temp_c = new->pkg_temp_c;


 if (old->gfx_rc6_ms > new->gfx_rc6_ms)
  old->gfx_rc6_ms = -1;
 else
  old->gfx_rc6_ms = new->gfx_rc6_ms - old->gfx_rc6_ms;

 old->gfx_mhz = new->gfx_mhz;

 DELTA_WRAP32(new->energy_pkg, old->energy_pkg);
 DELTA_WRAP32(new->energy_cores, old->energy_cores);
 DELTA_WRAP32(new->energy_gfx, old->energy_gfx);
 DELTA_WRAP32(new->energy_dram, old->energy_dram);
 DELTA_WRAP32(new->rapl_pkg_perf_status, old->rapl_pkg_perf_status);
 DELTA_WRAP32(new->rapl_dram_perf_status, old->rapl_dram_perf_status);

 for (i = 0, mp = sys.pp; mp; i++, mp = mp->next) {
  if (mp->format == FORMAT_RAW)
   old->counter[i] = new->counter[i];
  else
   old->counter[i] = new->counter[i] - old->counter[i];
 }

 return 0;
}
