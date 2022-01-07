
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* u64 ;
struct timechart {int dummy; } ;
struct perf_sample {int time; int cpu; } ;
struct evsel {int dummy; } ;


 void* perf_evsel__intval (struct evsel*,struct perf_sample*,char*) ;
 int sched_switch (struct timechart*,int ,int ,int,int,void*,char const*) ;

__attribute__((used)) static int
process_sample_sched_switch(struct timechart *tchart,
       struct evsel *evsel,
       struct perf_sample *sample,
       const char *backtrace)
{
 int prev_pid = perf_evsel__intval(evsel, sample, "prev_pid");
 int next_pid = perf_evsel__intval(evsel, sample, "next_pid");
 u64 prev_state = perf_evsel__intval(evsel, sample, "prev_state");

 sched_switch(tchart, sample->cpu, sample->time, prev_pid, next_pid,
       prev_state, backtrace);
 return 0;
}
