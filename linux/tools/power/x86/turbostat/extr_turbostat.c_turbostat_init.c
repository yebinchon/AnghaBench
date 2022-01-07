
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ODD_COUNTERS ;
 int check_dev_msr () ;
 int check_permissions () ;
 scalar_t__ do_irtl_snb ;
 int for_all_cpus (int ,int ) ;
 int print_epb ;
 int print_hwp ;
 int print_irtl () ;
 int print_perf_limit ;
 int print_rapl ;
 int print_thermal ;
 int process_cpuid () ;
 int quiet ;
 int set_base_cpu () ;
 int set_temperature_target ;
 int setup_all_buffers () ;

void turbostat_init()
{
 setup_all_buffers();
 set_base_cpu();
 check_dev_msr();
 check_permissions();
 process_cpuid();


 if (!quiet)
  for_all_cpus(print_hwp, ODD_COUNTERS);

 if (!quiet)
  for_all_cpus(print_epb, ODD_COUNTERS);

 if (!quiet)
  for_all_cpus(print_perf_limit, ODD_COUNTERS);

 if (!quiet)
  for_all_cpus(print_rapl, ODD_COUNTERS);

 for_all_cpus(set_temperature_target, ODD_COUNTERS);

 if (!quiet)
  for_all_cpus(print_thermal, ODD_COUNTERS);

 if (!quiet && do_irtl_snb)
  print_irtl();
}
