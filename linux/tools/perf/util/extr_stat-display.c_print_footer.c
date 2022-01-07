
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int ru_stime; int ru_utime; } ;
struct perf_stat_config {int run_count; scalar_t__ print_mixed_hw_group_error; scalar_t__ print_free_counters_hint; scalar_t__ walltime_run_table; int walltime_nsecs_stats; TYPE_1__ ru_data; scalar_t__ ru_display; int null_run; int * output; } ;
typedef int FILE ;


 double NSEC_PER_SEC ;
 double avg_stats (int ) ;
 int fprintf (int *,char*,...) ;
 int get_precision (double) ;
 int print_noise_pct (struct perf_stat_config*,double,double) ;
 int print_table (struct perf_stat_config*,int *,int,double) ;
 double stddev_stats (int ) ;
 scalar_t__ sysctl__read_int (char*,int*) ;
 double timeval2double (int *) ;

__attribute__((used)) static void print_footer(struct perf_stat_config *config)
{
 double avg = avg_stats(config->walltime_nsecs_stats) / NSEC_PER_SEC;
 FILE *output = config->output;
 int n;

 if (!config->null_run)
  fprintf(output, "\n");

 if (config->run_count == 1) {
  fprintf(output, " %17.9f seconds time elapsed", avg);

  if (config->ru_display) {
   double ru_utime = timeval2double(&config->ru_data.ru_utime);
   double ru_stime = timeval2double(&config->ru_data.ru_stime);

   fprintf(output, "\n\n");
   fprintf(output, " %17.9f seconds user\n", ru_utime);
   fprintf(output, " %17.9f seconds sys\n", ru_stime);
  }
 } else {
  double sd = stddev_stats(config->walltime_nsecs_stats) / NSEC_PER_SEC;




  int precision = get_precision(sd) + 2;

  if (config->walltime_run_table)
   print_table(config, output, precision, avg);

  fprintf(output, " %17.*f +- %.*f seconds time elapsed",
   precision, avg, precision, sd);

  print_noise_pct(config, sd, avg);
 }
 fprintf(output, "\n\n");

 if (config->print_free_counters_hint &&
     sysctl__read_int("kernel/nmi_watchdog", &n) >= 0 &&
     n > 0)
  fprintf(output,
"Some events weren't counted. Try disabling the NMI watchdog:\n"
"	echo 0 > /proc/sys/kernel/nmi_watchdog\n"
"	perf stat ...\n"
"	echo 1 > /proc/sys/kernel/nmi_watchdog\n");

 if (config->print_mixed_hw_group_error)
  fprintf(output,
   "The events in group usually have to be from "
   "the same PMU. Try reorganizing the group.\n");
}
