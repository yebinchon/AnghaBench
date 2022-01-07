
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MSR_PKG_CST_CONFIG_CONTROL ;
 int MSR_PLATFORM_INFO ;
 int* amt_pkg_cstate_limits ;
 int base_cpu ;
 unsigned int base_hz ;
 unsigned int bclk ;
 unsigned int discover_bclk (unsigned int,unsigned int) ;
 int genuine_intel ;
 int get_msr (int ,int ,unsigned long long*) ;
 int* glm_pkg_cstate_limits ;
 int has_base_hz ;
 int has_misc_feature_control ;
 int* hsw_pkg_cstate_limits ;
 int* nhm_pkg_cstate_limits ;
 int no_MSR_MISC_PWR_MGMT ;
 int* phi_pkg_cstate_limits ;
 int pkg_cstate_limit ;
 int* skx_pkg_cstate_limits ;
 int* slv_pkg_cstate_limits ;
 int* snb_pkg_cstate_limits ;

int probe_nhm_msrs(unsigned int family, unsigned int model)
{
 unsigned long long msr;
 unsigned int base_ratio;
 int *pkg_cstate_limits;

 if (!genuine_intel)
  return 0;

 if (family != 6)
  return 0;

 bclk = discover_bclk(family, model);

 switch (model) {
 case 134:
 case 133:
  pkg_cstate_limits = nhm_pkg_cstate_limits;
  break;
 case 132:
 case 131:
 case 136:
 case 135:
  pkg_cstate_limits = snb_pkg_cstate_limits;
  has_misc_feature_control = 1;
  break;
 case 140:
 case 139:
 case 137:
 case 138:
 case 144:
 case 143:
 case 142:
 case 130:
 case 141:
  pkg_cstate_limits = hsw_pkg_cstate_limits;
  has_misc_feature_control = 1;
  break;
 case 129:
  pkg_cstate_limits = skx_pkg_cstate_limits;
  has_misc_feature_control = 1;
  break;
 case 146:
  no_MSR_MISC_PWR_MGMT = 1;
 case 145:
  pkg_cstate_limits = slv_pkg_cstate_limits;
  break;
 case 150:
  pkg_cstate_limits = amt_pkg_cstate_limits;
  no_MSR_MISC_PWR_MGMT = 1;
  break;
 case 128:
  pkg_cstate_limits = phi_pkg_cstate_limits;
  break;
 case 149:
 case 147:
 case 148:
  pkg_cstate_limits = glm_pkg_cstate_limits;
  break;
 default:
  return 0;
 }
 get_msr(base_cpu, MSR_PKG_CST_CONFIG_CONTROL, &msr);
 pkg_cstate_limit = pkg_cstate_limits[msr & 0xF];

 get_msr(base_cpu, MSR_PLATFORM_INFO, &msr);
 base_ratio = (msr >> 8) & 0xFF;

 base_hz = base_ratio * bclk * 1000000;
 has_base_hz = 1;
 return 1;
}
