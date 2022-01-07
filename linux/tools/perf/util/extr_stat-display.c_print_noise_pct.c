
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_stat_config {char* csv_sep; int output; scalar_t__ csv_output; } ;


 int fprintf (int ,char*,...) ;
 double rel_stddev_stats (double,double) ;

__attribute__((used)) static void print_noise_pct(struct perf_stat_config *config,
       double total, double avg)
{
 double pct = rel_stddev_stats(total, avg);

 if (config->csv_output)
  fprintf(config->output, "%s%.2f%%", config->csv_sep, pct);
 else if (pct)
  fprintf(config->output, "  ( +-%6.2f%% )", pct);
}
