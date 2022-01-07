
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BIC_Any_c0 ;
 int BIC_Avg_MHz ;
 int BIC_Busy ;
 int BIC_Bzy_MHz ;
 int BIC_CPUGFX ;
 int BIC_CPU_LPI ;
 int BIC_CPU_c1 ;
 int BIC_CPU_c3 ;
 int BIC_CPU_c6 ;
 int BIC_CPU_c7 ;
 int BIC_CoreTmp ;
 int BIC_GFXMHz ;
 int BIC_GFX_c0 ;
 int BIC_GFX_rc6 ;
 int BIC_IRQ ;
 int BIC_Mod_c6 ;
 int BIC_NOT_PRESENT (int ) ;
 int BIC_PRESENT (int ) ;
 int BIC_PkgTmp ;
 int BIC_Pkgpc10 ;
 int BIC_Pkgpc2 ;
 int BIC_Pkgpc3 ;
 int BIC_Pkgpc6 ;
 int BIC_Pkgpc7 ;
 int BIC_Pkgpc8 ;
 int BIC_Pkgpc9 ;
 int BIC_SMI ;
 int BIC_SYS_LPI ;
 int BIC_TSC_MHz ;
 int BIC_Totl_c0 ;




 scalar_t__ PCL__2 ;
 scalar_t__ PCL__3 ;
 scalar_t__ PCL__6 ;
 scalar_t__ PCL__7 ;
 int R_OK ;
 int __cpuid (int,unsigned int,unsigned int,unsigned int,unsigned int) ;
 int __cpuid_count (int,int ,unsigned int,unsigned int,unsigned int,unsigned int) ;
 int access (char*,int ) ;
 int aperf_mperf_multiplier ;
 int authentic_amd ;
 int automatic_cstate_conversion_probe (unsigned int,unsigned int) ;
 int calculate_tsc_tweak () ;
 int crystal_hz ;
 int decode_c6_demotion_policy_msr () ;
 int decode_feature_control_msr () ;
 int decode_misc_enable_msr () ;
 int decode_misc_feature_control () ;
 int decode_misc_pwr_mgmt_msr () ;
 int do_dts ;
 scalar_t__ do_irtl_hsw ;
 void* do_irtl_snb ;
 scalar_t__ do_knl_cstates ;
 int do_nhm_platform_info ;
 int do_ptm ;
 scalar_t__ do_slm_cstates ;
 void* do_snb_cstates ;
 int dump_cstate_pstate_config_info (unsigned int,unsigned int) ;
 int dump_sysfs_cstate_config () ;
 int dump_sysfs_pstate_config () ;
 int errx (int,char*) ;
 int fprintf (int ,char*,...) ;
 int genuine_intel ;
 int get_aperf_mperf_multiplier (unsigned int,unsigned int) ;
 int has_aperf ;
 scalar_t__ has_c8910_msrs (unsigned int,unsigned int) ;
 int has_epb ;
 int has_hwp ;
 int has_hwp_activity_window ;
 int has_hwp_epp ;
 int has_hwp_notify ;
 int has_hwp_pkg ;
 unsigned int has_invariant_tsc ;
 scalar_t__ has_skl_msrs (unsigned int,unsigned int) ;
 scalar_t__ has_slv_msrs (unsigned int,unsigned int) ;
 void* has_snb_msrs (unsigned int,unsigned int) ;
 int hygon_genuine ;
 unsigned int intel_model_duplicates (unsigned int) ;
 scalar_t__ is_bdx (unsigned int,unsigned int) ;
 scalar_t__ is_cnl (unsigned int,unsigned int) ;
 scalar_t__ is_dnv (unsigned int,unsigned int) ;
 scalar_t__ is_knl (unsigned int,unsigned int) ;
 scalar_t__ is_skx (unsigned int,unsigned int) ;
 scalar_t__ is_slm (unsigned int,unsigned int) ;
 int max_extended_level ;
 int max_level ;
 int outf ;
 int perf_limit_reasons_probe (unsigned int,unsigned int) ;
 scalar_t__ pkg_cstate_limit ;
 scalar_t__ probe_nhm_msrs (unsigned int,unsigned int) ;
 int quiet ;
 int rapl_probe (unsigned int,unsigned int) ;
 int tsc_hz ;
 int use_c1_residency_msr ;

void process_cpuid()
{
 unsigned int eax, ebx, ecx, edx;
 unsigned int fms, family, model, stepping, ecx_flags, edx_flags;
 unsigned int has_turbo;

 eax = ebx = ecx = edx = 0;

 __cpuid(0, max_level, ebx, ecx, edx);

 if (ebx == 0x756e6547 && ecx == 0x6c65746e && edx == 0x49656e69)
  genuine_intel = 1;
 else if (ebx == 0x68747541 && ecx == 0x444d4163 && edx == 0x69746e65)
  authentic_amd = 1;
 else if (ebx == 0x6f677948 && ecx == 0x656e6975 && edx == 0x6e65476e)
  hygon_genuine = 1;

 if (!quiet)
  fprintf(outf, "CPUID(0): %.4s%.4s%.4s ",
   (char *)&ebx, (char *)&edx, (char *)&ecx);

 __cpuid(1, fms, ebx, ecx, edx);
 family = (fms >> 8) & 0xf;
 model = (fms >> 4) & 0xf;
 stepping = fms & 0xf;
 if (family == 0xf)
  family += (fms >> 20) & 0xff;
 if (family >= 6)
  model += ((fms >> 16) & 0xf) << 4;
 ecx_flags = ecx;
 edx_flags = edx;






 ebx = ecx = edx = 0;
 __cpuid(0x80000000, max_extended_level, ebx, ecx, edx);

 if (!quiet) {
  fprintf(outf, "0x%x CPUID levels; 0x%x xlevels; family:model:stepping 0x%x:%x:%x (%d:%d:%d)\n",
   max_level, max_extended_level, family, model, stepping, family, model, stepping);
  fprintf(outf, "CPUID(1): %s %s %s %s %s %s %s %s %s %s\n",
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
  model = intel_model_duplicates(model);

 if (!(edx_flags & (1 << 5)))
  errx(1, "CPUID: no MSR");

 if (max_extended_level >= 0x80000007) {





  __cpuid(0x80000007, eax, ebx, ecx, edx);
  has_invariant_tsc = edx & (1 << 8);
 }






 __cpuid(0x6, eax, ebx, ecx, edx);
 has_aperf = ecx & (1 << 0);
 if (has_aperf) {
  BIC_PRESENT(BIC_Avg_MHz);
  BIC_PRESENT(BIC_Busy);
  BIC_PRESENT(BIC_Bzy_MHz);
 }
 do_dts = eax & (1 << 0);
 if (do_dts)
  BIC_PRESENT(BIC_CoreTmp);
 has_turbo = eax & (1 << 1);
 do_ptm = eax & (1 << 6);
 if (do_ptm)
  BIC_PRESENT(BIC_PkgTmp);
 has_hwp = eax & (1 << 7);
 has_hwp_notify = eax & (1 << 8);
 has_hwp_activity_window = eax & (1 << 9);
 has_hwp_epp = eax & (1 << 10);
 has_hwp_pkg = eax & (1 << 11);
 has_epb = ecx & (1 << 3);

 if (!quiet)
  fprintf(outf, "CPUID(6): %sAPERF, %sTURBO, %sDTS, %sPTM, %sHWP, "
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
  decode_misc_enable_msr();


 if (max_level >= 0x7 && !quiet) {
  int has_sgx;

  ecx = 0;

  __cpuid_count(0x7, 0, eax, ebx, ecx, edx);

  has_sgx = ebx & (1 << 2);
  fprintf(outf, "CPUID(7): %sSGX\n", has_sgx ? "" : "No-");

  if (has_sgx)
   decode_feature_control_msr();
 }

 if (max_level >= 0x15) {
  unsigned int eax_crystal;
  unsigned int ebx_tsc;




  eax_crystal = ebx_tsc = crystal_hz = edx = 0;
  __cpuid(0x15, eax_crystal, ebx_tsc, crystal_hz, edx);

  if (ebx_tsc != 0) {

   if (!quiet && (ebx != 0))
    fprintf(outf, "CPUID(0x15): eax_crystal: %d ebx_tsc: %d ecx_crystal_hz: %d\n",
     eax_crystal, ebx_tsc, crystal_hz);

   if (crystal_hz == 0)
    switch(model) {
    case 128:
     crystal_hz = 24000000;
     break;
    case 130:
     crystal_hz = 25000000;
     break;
    case 131:
    case 129:
     crystal_hz = 19200000;
     break;
    default:
     crystal_hz = 0;
   }

   if (crystal_hz) {
    tsc_hz = (unsigned long long) crystal_hz * ebx_tsc / eax_crystal;
    if (!quiet)
     fprintf(outf, "TSC: %lld MHz (%d Hz * %d / %d / 1000000)\n",
      tsc_hz / 1000000, crystal_hz, ebx_tsc, eax_crystal);
   }
  }
 }
 if (max_level >= 0x16) {
  unsigned int base_mhz, max_mhz, bus_mhz, edx;




  base_mhz = max_mhz = bus_mhz = edx = 0;

  __cpuid(0x16, base_mhz, max_mhz, bus_mhz, edx);
  if (!quiet)
   fprintf(outf, "CPUID(0x16): base_mhz: %d max_mhz: %d bus_mhz: %d\n",
    base_mhz, max_mhz, bus_mhz);
 }

 if (has_aperf)
  aperf_mperf_multiplier = get_aperf_mperf_multiplier(family, model);

 BIC_PRESENT(BIC_IRQ);
 BIC_PRESENT(BIC_TSC_MHz);

 if (probe_nhm_msrs(family, model)) {
  do_nhm_platform_info = 1;
  BIC_PRESENT(BIC_CPU_c1);
  BIC_PRESENT(BIC_CPU_c3);
  BIC_PRESENT(BIC_CPU_c6);
  BIC_PRESENT(BIC_SMI);
 }
 do_snb_cstates = has_snb_msrs(family, model);

 if (do_snb_cstates)
  BIC_PRESENT(BIC_CPU_c7);

 do_irtl_snb = has_snb_msrs(family, model);
 if (do_snb_cstates && (pkg_cstate_limit >= PCL__2))
  BIC_PRESENT(BIC_Pkgpc2);
 if (pkg_cstate_limit >= PCL__3)
  BIC_PRESENT(BIC_Pkgpc3);
 if (pkg_cstate_limit >= PCL__6)
  BIC_PRESENT(BIC_Pkgpc6);
 if (do_snb_cstates && (pkg_cstate_limit >= PCL__7))
  BIC_PRESENT(BIC_Pkgpc7);
 if (has_slv_msrs(family, model)) {
  BIC_NOT_PRESENT(BIC_Pkgpc2);
  BIC_NOT_PRESENT(BIC_Pkgpc3);
  BIC_PRESENT(BIC_Pkgpc6);
  BIC_NOT_PRESENT(BIC_Pkgpc7);
  BIC_PRESENT(BIC_Mod_c6);
  use_c1_residency_msr = 1;
 }
 if (is_dnv(family, model)) {
  BIC_PRESENT(BIC_CPU_c1);
  BIC_NOT_PRESENT(BIC_CPU_c3);
  BIC_NOT_PRESENT(BIC_Pkgpc3);
  BIC_NOT_PRESENT(BIC_CPU_c7);
  BIC_NOT_PRESENT(BIC_Pkgpc7);
  use_c1_residency_msr = 1;
 }
 if (is_skx(family, model)) {
  BIC_NOT_PRESENT(BIC_CPU_c3);
  BIC_NOT_PRESENT(BIC_Pkgpc3);
  BIC_NOT_PRESENT(BIC_CPU_c7);
  BIC_NOT_PRESENT(BIC_Pkgpc7);
 }
 if (is_bdx(family, model)) {
  BIC_NOT_PRESENT(BIC_CPU_c7);
  BIC_NOT_PRESENT(BIC_Pkgpc7);
 }
 if (has_c8910_msrs(family, model)) {
  BIC_PRESENT(BIC_Pkgpc8);
  BIC_PRESENT(BIC_Pkgpc9);
  BIC_PRESENT(BIC_Pkgpc10);
 }
 do_irtl_hsw = has_c8910_msrs(family, model);
 if (has_skl_msrs(family, model)) {
  BIC_PRESENT(BIC_Totl_c0);
  BIC_PRESENT(BIC_Any_c0);
  BIC_PRESENT(BIC_GFX_c0);
  BIC_PRESENT(BIC_CPUGFX);
 }
 do_slm_cstates = is_slm(family, model);
 do_knl_cstates = is_knl(family, model);

 if (do_slm_cstates || do_knl_cstates || is_cnl(family, model))
  BIC_NOT_PRESENT(BIC_CPU_c3);

 if (!quiet)
  decode_misc_pwr_mgmt_msr();

 if (!quiet && has_slv_msrs(family, model))
  decode_c6_demotion_policy_msr();

 rapl_probe(family, model);
 perf_limit_reasons_probe(family, model);
 automatic_cstate_conversion_probe(family, model);

 if (!quiet)
  dump_cstate_pstate_config_info(family, model);

 if (!quiet)
  dump_sysfs_cstate_config();
 if (!quiet)
  dump_sysfs_pstate_config();

 if (has_skl_msrs(family, model))
  calculate_tsc_tweak();

 if (!access("/sys/class/drm/card0/power/rc6_residency_ms", R_OK))
  BIC_PRESENT(BIC_GFX_rc6);

 if (!access("/sys/class/graphics/fb0/device/drm/card0/gt_cur_freq_mhz", R_OK))
  BIC_PRESENT(BIC_GFXMHz);

 if (!access("/sys/devices/system/cpu/cpuidle/low_power_idle_cpu_residency_us", R_OK))
  BIC_PRESENT(BIC_CPU_LPI);
 else
  BIC_NOT_PRESENT(BIC_CPU_LPI);

 if (!access("/sys/devices/system/cpu/cpuidle/low_power_idle_system_residency_us", R_OK))
  BIC_PRESENT(BIC_SYS_LPI);
 else
  BIC_NOT_PRESENT(BIC_SYS_LPI);

 if (!quiet)
  decode_misc_feature_control();

 return;
}
