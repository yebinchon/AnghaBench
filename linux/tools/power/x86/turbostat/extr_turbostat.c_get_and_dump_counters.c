
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ODD_COUNTERS ;
 int dump_counters ;
 int flush_output_stdout () ;
 int for_all_cpus (int ,int ) ;
 int get_counters ;
 int snapshot_proc_sysfs_files () ;

int get_and_dump_counters(void)
{
 int status;

 snapshot_proc_sysfs_files();
 status = for_all_cpus(get_counters, ODD_COUNTERS);
 if (status)
  return status;

 status = for_all_cpus(dump_counters, ODD_COUNTERS);
 if (status)
  return status;

 flush_output_stdout();

 return status;
}
