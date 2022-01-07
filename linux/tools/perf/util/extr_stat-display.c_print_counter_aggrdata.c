
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef double u64 ;
struct perf_stat_config {TYPE_1__* aggr_map; int * output; } ;
struct evsel {double scale; } ;
struct aggr_data {int id; double val; double ena; double run; int nr; } ;
struct TYPE_2__ {int* map; } ;
typedef int FILE ;


 int aggr_cb ;
 int aggr_printout (struct perf_stat_config*,struct evsel*,int,int) ;
 int collect_data (struct perf_stat_config*,struct evsel*,int ,struct aggr_data*) ;
 int fprintf (int *,char*,char*) ;
 int fputc (char,int *) ;
 int printout (struct perf_stat_config*,int,int,struct evsel*,double,char*,double,double,double,int *) ;
 int rt_stat ;

__attribute__((used)) static void print_counter_aggrdata(struct perf_stat_config *config,
       struct evsel *counter, int s,
       char *prefix, bool metric_only,
       bool *first)
{
 struct aggr_data ad;
 FILE *output = config->output;
 u64 ena, run, val;
 int id, nr;
 double uval;

 ad.id = id = config->aggr_map->map[s];
 ad.val = ad.ena = ad.run = 0;
 ad.nr = 0;
 if (!collect_data(config, counter, aggr_cb, &ad))
  return;

 nr = ad.nr;
 ena = ad.ena;
 run = ad.run;
 val = ad.val;
 if (*first && metric_only) {
  *first = 0;
  aggr_printout(config, counter, id, nr);
 }
 if (prefix && !metric_only)
  fprintf(output, "%s", prefix);

 uval = val * counter->scale;
 printout(config, id, nr, counter, uval, prefix,
   run, ena, 1.0, &rt_stat);
 if (!metric_only)
  fputc('\n', output);
}
