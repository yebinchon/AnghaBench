
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timezone {int dummy; } ;


 int EVEN_COUNTERS ;
 int ODD_COUNTERS ;
 int compute_average (int ) ;
 int cpu_is_not_present ;
 int delta_cpu ;
 int do_sleep () ;
 int exit (int) ;
 scalar_t__ exit_requested ;
 scalar_t__ first_counter_read ;
 int flush_output_stdout () ;
 int for_all_cpus (int ,int ) ;
 scalar_t__ for_all_cpus_2 (int ,int ,int ) ;
 scalar_t__ for_all_proc_cpus (int ) ;
 int format_all_counters (int ) ;
 int get_counters ;
 int gettimeofday (int *,struct timezone*) ;
 int num_iterations ;
 int re_initialize () ;
 int setup_signal_handler () ;
 scalar_t__ snapshot_proc_sysfs_files () ;
 int timersub (int *,int *,int *) ;
 int tv_delta ;
 int tv_even ;
 int tv_odd ;

void turbostat_loop()
{
 int retval;
 int restarted = 0;
 int done_iters = 0;

 setup_signal_handler();

restart:
 restarted++;

 snapshot_proc_sysfs_files();
 retval = for_all_cpus(get_counters, EVEN_COUNTERS);
 first_counter_read = 0;
 if (retval < -1) {
  exit(retval);
 } else if (retval == -1) {
  if (restarted > 1) {
   exit(retval);
  }
  re_initialize();
  goto restart;
 }
 restarted = 0;
 done_iters = 0;
 gettimeofday(&tv_even, (struct timezone *)((void*)0));

 while (1) {
  if (for_all_proc_cpus(cpu_is_not_present)) {
   re_initialize();
   goto restart;
  }
  do_sleep();
  if (snapshot_proc_sysfs_files())
   goto restart;
  retval = for_all_cpus(get_counters, ODD_COUNTERS);
  if (retval < -1) {
   exit(retval);
  } else if (retval == -1) {
   re_initialize();
   goto restart;
  }
  gettimeofday(&tv_odd, (struct timezone *)((void*)0));
  timersub(&tv_odd, &tv_even, &tv_delta);
  if (for_all_cpus_2(delta_cpu, ODD_COUNTERS, EVEN_COUNTERS)) {
   re_initialize();
   goto restart;
  }
  compute_average(EVEN_COUNTERS);
  format_all_counters(EVEN_COUNTERS);
  flush_output_stdout();
  if (exit_requested)
   break;
  if (num_iterations && ++done_iters >= num_iterations)
   break;
  do_sleep();
  if (snapshot_proc_sysfs_files())
   goto restart;
  retval = for_all_cpus(get_counters, EVEN_COUNTERS);
  if (retval < -1) {
   exit(retval);
  } else if (retval == -1) {
   re_initialize();
   goto restart;
  }
  gettimeofday(&tv_even, (struct timezone *)((void*)0));
  timersub(&tv_even, &tv_odd, &tv_delta);
  if (for_all_cpus_2(delta_cpu, EVEN_COUNTERS, ODD_COUNTERS)) {
   re_initialize();
   goto restart;
  }
  compute_average(ODD_COUNTERS);
  format_all_counters(ODD_COUNTERS);
  flush_output_stdout();
  if (exit_requested)
   break;
  if (num_iterations && ++done_iters >= num_iterations)
   break;
 }
}
