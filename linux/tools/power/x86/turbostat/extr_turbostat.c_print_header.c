
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct msr_counter {scalar_t__ format; int width; scalar_t__ type; int name; struct msr_counter* next; } ;
struct TYPE_2__ {struct msr_counter* pp; struct msr_counter* cp; struct msr_counter* tp; } ;


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
 scalar_t__ DO_BIC (int ) ;
 scalar_t__ FORMAT_RAW ;
 int RAPL_PER_CORE_ENERGY ;
 int do_rapl ;
 int outp ;
 scalar_t__ rapl_joules ;
 scalar_t__ sprintf (int ,char*,...) ;
 scalar_t__ sums_need_wide_columns ;
 TYPE_1__ sys ;

void print_header(char *delim)
{
 struct msr_counter *mp;
 int printed = 0;

 if (DO_BIC(BIC_USEC))
  outp += sprintf(outp, "%susec", (printed++ ? delim : ""));
 if (DO_BIC(BIC_TOD))
  outp += sprintf(outp, "%sTime_Of_Day_Seconds", (printed++ ? delim : ""));
 if (DO_BIC(BIC_Package))
  outp += sprintf(outp, "%sPackage", (printed++ ? delim : ""));
 if (DO_BIC(BIC_Die))
  outp += sprintf(outp, "%sDie", (printed++ ? delim : ""));
 if (DO_BIC(BIC_Node))
  outp += sprintf(outp, "%sNode", (printed++ ? delim : ""));
 if (DO_BIC(BIC_Core))
  outp += sprintf(outp, "%sCore", (printed++ ? delim : ""));
 if (DO_BIC(BIC_CPU))
  outp += sprintf(outp, "%sCPU", (printed++ ? delim : ""));
 if (DO_BIC(BIC_APIC))
  outp += sprintf(outp, "%sAPIC", (printed++ ? delim : ""));
 if (DO_BIC(BIC_X2APIC))
  outp += sprintf(outp, "%sX2APIC", (printed++ ? delim : ""));
 if (DO_BIC(BIC_Avg_MHz))
  outp += sprintf(outp, "%sAvg_MHz", (printed++ ? delim : ""));
 if (DO_BIC(BIC_Busy))
  outp += sprintf(outp, "%sBusy%%", (printed++ ? delim : ""));
 if (DO_BIC(BIC_Bzy_MHz))
  outp += sprintf(outp, "%sBzy_MHz", (printed++ ? delim : ""));
 if (DO_BIC(BIC_TSC_MHz))
  outp += sprintf(outp, "%sTSC_MHz", (printed++ ? delim : ""));

 if (DO_BIC(BIC_IRQ)) {
  if (sums_need_wide_columns)
   outp += sprintf(outp, "%s     IRQ", (printed++ ? delim : ""));
  else
   outp += sprintf(outp, "%sIRQ", (printed++ ? delim : ""));
 }

 if (DO_BIC(BIC_SMI))
  outp += sprintf(outp, "%sSMI", (printed++ ? delim : ""));

 for (mp = sys.tp; mp; mp = mp->next) {

  if (mp->format == FORMAT_RAW) {
   if (mp->width == 64)
    outp += sprintf(outp, "%s%18.18s", (printed++ ? delim : ""), mp->name);
   else
    outp += sprintf(outp, "%s%10.10s", (printed++ ? delim : ""), mp->name);
  } else {
   if ((mp->type == COUNTER_ITEMS) && sums_need_wide_columns)
    outp += sprintf(outp, "%s%8s", (printed++ ? delim : ""), mp->name);
   else
    outp += sprintf(outp, "%s%s", (printed++ ? delim : ""), mp->name);
  }
 }

 if (DO_BIC(BIC_CPU_c1))
  outp += sprintf(outp, "%sCPU%%c1", (printed++ ? delim : ""));
 if (DO_BIC(BIC_CPU_c3))
  outp += sprintf(outp, "%sCPU%%c3", (printed++ ? delim : ""));
 if (DO_BIC(BIC_CPU_c6))
  outp += sprintf(outp, "%sCPU%%c6", (printed++ ? delim : ""));
 if (DO_BIC(BIC_CPU_c7))
  outp += sprintf(outp, "%sCPU%%c7", (printed++ ? delim : ""));

 if (DO_BIC(BIC_Mod_c6))
  outp += sprintf(outp, "%sMod%%c6", (printed++ ? delim : ""));

 if (DO_BIC(BIC_CoreTmp))
  outp += sprintf(outp, "%sCoreTmp", (printed++ ? delim : ""));

 if (do_rapl && !rapl_joules) {
  if (DO_BIC(BIC_CorWatt) && (do_rapl & RAPL_PER_CORE_ENERGY))
   outp += sprintf(outp, "%sCorWatt", (printed++ ? delim : ""));
 } else if (do_rapl && rapl_joules) {
  if (DO_BIC(BIC_Cor_J) && (do_rapl & RAPL_PER_CORE_ENERGY))
   outp += sprintf(outp, "%sCor_J", (printed++ ? delim : ""));
 }

 for (mp = sys.cp; mp; mp = mp->next) {
  if (mp->format == FORMAT_RAW) {
   if (mp->width == 64)
    outp += sprintf(outp, "%s%18.18s", delim, mp->name);
   else
    outp += sprintf(outp, "%s%10.10s", delim, mp->name);
  } else {
   if ((mp->type == COUNTER_ITEMS) && sums_need_wide_columns)
    outp += sprintf(outp, "%s%8s", delim, mp->name);
   else
    outp += sprintf(outp, "%s%s", delim, mp->name);
  }
 }

 if (DO_BIC(BIC_PkgTmp))
  outp += sprintf(outp, "%sPkgTmp", (printed++ ? delim : ""));

 if (DO_BIC(BIC_GFX_rc6))
  outp += sprintf(outp, "%sGFX%%rc6", (printed++ ? delim : ""));

 if (DO_BIC(BIC_GFXMHz))
  outp += sprintf(outp, "%sGFXMHz", (printed++ ? delim : ""));

 if (DO_BIC(BIC_Totl_c0))
  outp += sprintf(outp, "%sTotl%%C0", (printed++ ? delim : ""));
 if (DO_BIC(BIC_Any_c0))
  outp += sprintf(outp, "%sAny%%C0", (printed++ ? delim : ""));
 if (DO_BIC(BIC_GFX_c0))
  outp += sprintf(outp, "%sGFX%%C0", (printed++ ? delim : ""));
 if (DO_BIC(BIC_CPUGFX))
  outp += sprintf(outp, "%sCPUGFX%%", (printed++ ? delim : ""));

 if (DO_BIC(BIC_Pkgpc2))
  outp += sprintf(outp, "%sPkg%%pc2", (printed++ ? delim : ""));
 if (DO_BIC(BIC_Pkgpc3))
  outp += sprintf(outp, "%sPkg%%pc3", (printed++ ? delim : ""));
 if (DO_BIC(BIC_Pkgpc6))
  outp += sprintf(outp, "%sPkg%%pc6", (printed++ ? delim : ""));
 if (DO_BIC(BIC_Pkgpc7))
  outp += sprintf(outp, "%sPkg%%pc7", (printed++ ? delim : ""));
 if (DO_BIC(BIC_Pkgpc8))
  outp += sprintf(outp, "%sPkg%%pc8", (printed++ ? delim : ""));
 if (DO_BIC(BIC_Pkgpc9))
  outp += sprintf(outp, "%sPkg%%pc9", (printed++ ? delim : ""));
 if (DO_BIC(BIC_Pkgpc10))
  outp += sprintf(outp, "%sPk%%pc10", (printed++ ? delim : ""));
 if (DO_BIC(BIC_CPU_LPI))
  outp += sprintf(outp, "%sCPU%%LPI", (printed++ ? delim : ""));
 if (DO_BIC(BIC_SYS_LPI))
  outp += sprintf(outp, "%sSYS%%LPI", (printed++ ? delim : ""));

 if (do_rapl && !rapl_joules) {
  if (DO_BIC(BIC_PkgWatt))
   outp += sprintf(outp, "%sPkgWatt", (printed++ ? delim : ""));
  if (DO_BIC(BIC_CorWatt) && !(do_rapl & RAPL_PER_CORE_ENERGY))
   outp += sprintf(outp, "%sCorWatt", (printed++ ? delim : ""));
  if (DO_BIC(BIC_GFXWatt))
   outp += sprintf(outp, "%sGFXWatt", (printed++ ? delim : ""));
  if (DO_BIC(BIC_RAMWatt))
   outp += sprintf(outp, "%sRAMWatt", (printed++ ? delim : ""));
  if (DO_BIC(BIC_PKG__))
   outp += sprintf(outp, "%sPKG_%%", (printed++ ? delim : ""));
  if (DO_BIC(BIC_RAM__))
   outp += sprintf(outp, "%sRAM_%%", (printed++ ? delim : ""));
 } else if (do_rapl && rapl_joules) {
  if (DO_BIC(BIC_Pkg_J))
   outp += sprintf(outp, "%sPkg_J", (printed++ ? delim : ""));
  if (DO_BIC(BIC_Cor_J) && !(do_rapl & RAPL_PER_CORE_ENERGY))
   outp += sprintf(outp, "%sCor_J", (printed++ ? delim : ""));
  if (DO_BIC(BIC_GFX_J))
   outp += sprintf(outp, "%sGFX_J", (printed++ ? delim : ""));
  if (DO_BIC(BIC_RAM_J))
   outp += sprintf(outp, "%sRAM_J", (printed++ ? delim : ""));
  if (DO_BIC(BIC_PKG__))
   outp += sprintf(outp, "%sPKG_%%", (printed++ ? delim : ""));
  if (DO_BIC(BIC_RAM__))
   outp += sprintf(outp, "%sRAM_%%", (printed++ ? delim : ""));
 }
 for (mp = sys.pp; mp; mp = mp->next) {
  if (mp->format == FORMAT_RAW) {
   if (mp->width == 64)
    outp += sprintf(outp, "%s%18.18s", delim, mp->name);
   else
    outp += sprintf(outp, "%s%10.10s", delim, mp->name);
  } else {
   if ((mp->type == COUNTER_ITEMS) && sums_need_wide_columns)
    outp += sprintf(outp, "%s%8s", delim, mp->name);
   else
    outp += sprintf(outp, "%s%s", delim, mp->name);
  }
 }

 outp += sprintf(outp, "\n");
}
