
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct perf_sched {scalar_t__ idle_hist; int skipped_samples; } ;
struct perf_sample {int dummy; } ;
struct evsel {int dummy; } ;


 scalar_t__ perf_evsel__intval (struct evsel*,struct perf_sample*,char*) ;
 int perf_evsel__name (struct evsel*) ;
 scalar_t__ strcmp (int ,char*) ;
 scalar_t__ thread__is_filtered (struct thread*) ;

__attribute__((used)) static bool timehist_skip_sample(struct perf_sched *sched,
     struct thread *thread,
     struct evsel *evsel,
     struct perf_sample *sample)
{
 bool rc = 0;

 if (thread__is_filtered(thread)) {
  rc = 1;
  sched->skipped_samples++;
 }

 if (sched->idle_hist) {
  if (strcmp(perf_evsel__name(evsel), "sched:sched_switch"))
   rc = 1;
  else if (perf_evsel__intval(evsel, sample, "prev_pid") != 0 &&
    perf_evsel__intval(evsel, sample, "next_pid") != 0)
   rc = 1;
 }

 return rc;
}
