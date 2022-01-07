
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_sample {scalar_t__ pid; } ;
struct evsel {int dummy; } ;


 scalar_t__ perf_evsel__intval (struct evsel*,struct perf_sample*,char*) ;
 int perf_evsel__name (struct evsel*) ;
 scalar_t__ strcmp (int ,char*) ;

__attribute__((used)) static bool is_idle_sample(struct perf_sample *sample,
      struct evsel *evsel)
{

 if (strcmp(perf_evsel__name(evsel), "sched:sched_switch") == 0)
  return perf_evsel__intval(evsel, sample, "prev_pid") == 0;

 return sample->pid == 0;
}
