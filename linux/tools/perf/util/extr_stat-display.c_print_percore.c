
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct perf_stat_config {int metric_only; TYPE_1__* aggr_map; scalar_t__ aggr_get_id; int * output; } ;
struct evsel {int dummy; } ;
struct TYPE_2__ {int nr; } ;
typedef int FILE ;


 int fprintf (int *,char*,char*) ;
 int fputc (char,int *) ;
 int print_counter_aggrdata (struct perf_stat_config*,struct evsel*,int,char*,int,int*) ;

__attribute__((used)) static void print_percore(struct perf_stat_config *config,
     struct evsel *counter, char *prefix)
{
 bool metric_only = config->metric_only;
 FILE *output = config->output;
 int s;
 bool first = 1;

 if (!(config->aggr_map || config->aggr_get_id))
  return;

 for (s = 0; s < config->aggr_map->nr; s++) {
  if (prefix && metric_only)
   fprintf(output, "%s", prefix);

  print_counter_aggrdata(config, counter, s,
           prefix, metric_only,
           &first);
 }

 if (metric_only)
  fputc('\n', output);
}
