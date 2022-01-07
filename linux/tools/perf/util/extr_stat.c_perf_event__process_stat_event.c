
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_record_stat {int thread; int cpu; int id; int run; int ena; int val; } ;
union perf_event {struct perf_record_stat stat; } ;
struct perf_session {int evlist; } ;
struct perf_counts_values {int run; int ena; int val; } ;
struct evsel {int supported; int counts; } ;


 int EINVAL ;
 struct perf_counts_values* perf_counts (int ,int ,int ) ;
 struct evsel* perf_evlist__id2evsel (int ,int ) ;
 int pr_err (char*) ;

int perf_event__process_stat_event(struct perf_session *session,
       union perf_event *event)
{
 struct perf_counts_values count;
 struct perf_record_stat *st = &event->stat;
 struct evsel *counter;

 count.val = st->val;
 count.ena = st->ena;
 count.run = st->run;

 counter = perf_evlist__id2evsel(session->evlist, st->id);
 if (!counter) {
  pr_err("Failed to resolve counter for stat event.\n");
  return -EINVAL;
 }

 *perf_counts(counter->counts, st->cpu, st->thread) = count;
 counter->supported = 1;
 return 0;
}
