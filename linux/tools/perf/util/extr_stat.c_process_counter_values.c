
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct perf_stat_config {int aggr_mode; int * stats; int scale; } ;
struct perf_counts_values {int run; int ena; int val; } ;
struct evsel {int percore; int snapshot; TYPE_1__* counts; } ;
struct TYPE_2__ {struct perf_counts_values aggr; } ;
 scalar_t__ check_per_pkg (struct evsel*,struct perf_counts_values*,int,int*) ;
 int perf_counts_values__scale (struct perf_counts_values*,int ,int *) ;
 int perf_evsel__compute_deltas (struct evsel*,int,int,struct perf_counts_values*) ;
 int perf_stat__update_shadow_stats (struct evsel*,int ,int,int *) ;
 int pr_err (char*) ;
 int rt_stat ;

__attribute__((used)) static int
process_counter_values(struct perf_stat_config *config, struct evsel *evsel,
         int cpu, int thread,
         struct perf_counts_values *count)
{
 struct perf_counts_values *aggr = &evsel->counts->aggr;
 static struct perf_counts_values zero;
 bool skip = 0;

 if (check_per_pkg(evsel, count, cpu, &skip)) {
  pr_err("failed to read per-pkg counter\n");
  return -1;
 }

 if (skip)
  count = &zero;

 switch (config->aggr_mode) {
 case 129:
 case 134:
 case 133:
 case 130:
 case 131:
  if (!evsel->snapshot)
   perf_evsel__compute_deltas(evsel, cpu, thread, count);
  perf_counts_values__scale(count, config->scale, ((void*)0));
  if ((config->aggr_mode == 131) && (!evsel->percore)) {
   perf_stat__update_shadow_stats(evsel, count->val,
             cpu, &rt_stat);
  }

  if (config->aggr_mode == 129) {
   if (config->stats)
    perf_stat__update_shadow_stats(evsel,
     count->val, 0, &config->stats[thread]);
   else
    perf_stat__update_shadow_stats(evsel,
     count->val, 0, &rt_stat);
  }
  break;
 case 132:
  aggr->val += count->val;
  aggr->ena += count->ena;
  aggr->run += count->run;
 case 128:
 default:
  break;
 }

 return 0;
}
