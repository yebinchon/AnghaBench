
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cpuidle_monitor {int name; int name_len; } ;
struct TYPE_2__ {int caps; } ;


 int CPUPOWER_CAP_APERF ;
 void* aperf_current_count ;
 void* aperf_previous_count ;
 void* calloc (int ,int) ;
 int cpu_count ;
 TYPE_1__ cpupower_cpu_info ;
 scalar_t__ init_maxfreq_mode () ;
 void* is_valid ;
 void* mperf_current_count ;
 struct cpuidle_monitor mperf_monitor ;
 void* mperf_previous_count ;
 int strlen (int ) ;

struct cpuidle_monitor *mperf_register(void)
{
 if (!(cpupower_cpu_info.caps & CPUPOWER_CAP_APERF))
  return ((void*)0);

 if (init_maxfreq_mode())
  return ((void*)0);


 is_valid = calloc(cpu_count, sizeof(int));
 mperf_previous_count = calloc(cpu_count, sizeof(unsigned long long));
 aperf_previous_count = calloc(cpu_count, sizeof(unsigned long long));
 mperf_current_count = calloc(cpu_count, sizeof(unsigned long long));
 aperf_current_count = calloc(cpu_count, sizeof(unsigned long long));

 mperf_monitor.name_len = strlen(mperf_monitor.name);
 return &mperf_monitor;
}
