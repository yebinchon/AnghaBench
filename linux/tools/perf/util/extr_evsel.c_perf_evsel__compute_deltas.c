
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct perf_counts_values {scalar_t__ run; scalar_t__ ena; scalar_t__ val; } ;
struct evsel {TYPE_1__* prev_raw_counts; } ;
struct TYPE_2__ {struct perf_counts_values aggr; } ;


 struct perf_counts_values* perf_counts (TYPE_1__*,int,int) ;

void perf_evsel__compute_deltas(struct evsel *evsel, int cpu, int thread,
    struct perf_counts_values *count)
{
 struct perf_counts_values tmp;

 if (!evsel->prev_raw_counts)
  return;

 if (cpu == -1) {
  tmp = evsel->prev_raw_counts->aggr;
  evsel->prev_raw_counts->aggr = *count;
 } else {
  tmp = *perf_counts(evsel->prev_raw_counts, cpu, thread);
  *perf_counts(evsel->prev_raw_counts, cpu, thread) = *count;
 }

 count->val = count->val - tmp.val;
 count->ena = count->ena - tmp.ena;
 count->run = count->run - tmp.run;
}
