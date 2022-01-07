
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef double u64 ;
struct perf_stat_config {int * output; } ;
struct evsel {double scale; } ;
struct aggr_data {int cpu; double val; double ena; double run; } ;
typedef int FILE ;


 int collect_data (struct perf_stat_config*,struct evsel*,int ,struct aggr_data*) ;
 int counter_cb ;
 int fprintf (int *,char*,char*) ;
 int fputc (char,int *) ;
 int perf_evsel__nr_cpus (struct evsel*) ;
 int printout (struct perf_stat_config*,int,int ,struct evsel*,double,char*,double,double,double,int *) ;
 int rt_stat ;

__attribute__((used)) static void print_counter(struct perf_stat_config *config,
     struct evsel *counter, char *prefix)
{
 FILE *output = config->output;
 u64 ena, run, val;
 double uval;
 int cpu;

 for (cpu = 0; cpu < perf_evsel__nr_cpus(counter); cpu++) {
  struct aggr_data ad = { .cpu = cpu };

  if (!collect_data(config, counter, counter_cb, &ad))
   return;
  val = ad.val;
  ena = ad.ena;
  run = ad.run;

  if (prefix)
   fprintf(output, "%s", prefix);

  uval = val * counter->scale;
  printout(config, cpu, 0, counter, uval, prefix, run, ena, 1.0,
    &rt_stat);

  fputc('\n', output);
 }
}
