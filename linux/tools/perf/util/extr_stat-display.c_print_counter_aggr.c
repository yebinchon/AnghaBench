
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_stat_config {int metric_only; int * output; } ;
struct evsel {double scale; } ;
struct caggr_data {double avg; int avg_enabled; int avg_running; } ;
typedef int FILE ;


 int collect_data (struct perf_stat_config*,struct evsel*,int ,struct caggr_data*) ;
 int counter_aggr_cb ;
 int fprintf (int *,char*,...) ;
 int printout (struct perf_stat_config*,int,int ,struct evsel*,double,char*,int ,int ,double,int *) ;
 int rt_stat ;

__attribute__((used)) static void print_counter_aggr(struct perf_stat_config *config,
          struct evsel *counter, char *prefix)
{
 bool metric_only = config->metric_only;
 FILE *output = config->output;
 double uval;
 struct caggr_data cd = { .avg = 0.0 };

 if (!collect_data(config, counter, counter_aggr_cb, &cd))
  return;

 if (prefix && !metric_only)
  fprintf(output, "%s", prefix);

 uval = cd.avg * counter->scale;
 printout(config, -1, 0, counter, uval, prefix, cd.avg_running, cd.avg_enabled,
   cd.avg, &rt_stat);
 if (!metric_only)
  fprintf(output, "\n");
}
