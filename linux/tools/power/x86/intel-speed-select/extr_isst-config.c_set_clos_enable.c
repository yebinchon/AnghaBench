
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ cmd_help ;
 scalar_t__ cpufreq_sysfs_present () ;
 int enable_clos_qos_config ;
 int exit (int ) ;
 int for_each_online_package_in_set (int ,int *,int *,int *,int*) ;
 int for_each_online_target_cpu_in_set (int ,int *,int *,int *,int*) ;
 int fprintf (int ,char*) ;
 int isst_ctdp_display_information_end (int ) ;
 int isst_ctdp_display_information_start (int ) ;
 scalar_t__ max_target_cpus ;
 int outf ;
 int stderr ;

__attribute__((used)) static void set_clos_enable(void)
{
 int status = 1;

 if (cmd_help) {
  fprintf(stderr, "Enable core-power for a package/die\n");
  fprintf(stderr,
   "\tClos Enable: Specify priority type with [--priority|-p]\n");
  fprintf(stderr, "\t\t 0: Proportional, 1: Ordered\n");
  exit(0);
 }

 if (cpufreq_sysfs_present()) {
  fprintf(stderr,
   "cpufreq subsystem and core-power enable will interfere with each other!\n");
 }

 isst_ctdp_display_information_start(outf);
 if (max_target_cpus)
  for_each_online_target_cpu_in_set(enable_clos_qos_config, ((void*)0),
        ((void*)0), ((void*)0), &status);
 else
  for_each_online_package_in_set(enable_clos_qos_config, ((void*)0),
            ((void*)0), ((void*)0), &status);
 isst_ctdp_display_information_end(outf);
}
