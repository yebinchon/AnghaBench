
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int hwp_max; int hwp_min; } ;


 int F_OK ;
 scalar_t__ access (char*,int ) ;
 int has_hwp ;
 int hwp_update_enabled () ;
 TYPE_1__ req_update ;
 int update_cpufreq_scaling_freq (int,int,int ) ;
 scalar_t__ update_hwp_max ;
 scalar_t__ update_hwp_min ;

int update_sysfs(int cpu)
{
 if (!has_hwp)
  return 0;

 if (!hwp_update_enabled())
  return 0;

 if (access("/sys/devices/system/cpu/cpu0/cpufreq", F_OK))
  return 0;

 if (update_hwp_min)
  update_cpufreq_scaling_freq(0, cpu, req_update.hwp_min);

 if (update_hwp_max)
  update_cpufreq_scaling_freq(1, cpu, req_update.hwp_max);

 return 0;
}
