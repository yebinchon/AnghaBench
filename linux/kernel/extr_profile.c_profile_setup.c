
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CPU_PROFILING ;
 int KVM_PROFILING ;
 int SCHED_PROFILING ;
 int SLEEP_PROFILING ;
 int force_schedstat_enabled () ;
 scalar_t__ get_option (char**,int*) ;
 int pr_info (char*,int) ;
 int pr_warn (char*) ;
 int prof_on ;
 int prof_shift ;
 int strlen (char const*) ;
 int strncmp (char*,char const*,int) ;

int profile_setup(char *str)
{
 static const char schedstr[] = "schedule";
 static const char sleepstr[] = "sleep";
 static const char kvmstr[] = "kvm";
 int par;

 if (!strncmp(str, sleepstr, strlen(sleepstr))) {
  pr_warn("kernel sleep profiling requires CONFIG_SCHEDSTATS\n");

 } else if (!strncmp(str, schedstr, strlen(schedstr))) {
  prof_on = SCHED_PROFILING;
  if (str[strlen(schedstr)] == ',')
   str += strlen(schedstr) + 1;
  if (get_option(&str, &par))
   prof_shift = par;
  pr_info("kernel schedule profiling enabled (shift: %ld)\n",
   prof_shift);
 } else if (!strncmp(str, kvmstr, strlen(kvmstr))) {
  prof_on = KVM_PROFILING;
  if (str[strlen(kvmstr)] == ',')
   str += strlen(kvmstr) + 1;
  if (get_option(&str, &par))
   prof_shift = par;
  pr_info("kernel KVM profiling enabled (shift: %ld)\n",
   prof_shift);
 } else if (get_option(&str, &par)) {
  prof_shift = par;
  prof_on = CPU_PROFILING;
  pr_info("kernel profiling enabled (shift: %ld)\n",
   prof_shift);
 }
 return 1;
}
