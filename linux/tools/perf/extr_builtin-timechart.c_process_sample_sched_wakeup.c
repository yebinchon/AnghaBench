
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* u8 ;
struct timechart {int dummy; } ;
struct perf_sample {int time; int cpu; } ;
struct evsel {int dummy; } ;


 void* perf_evsel__intval (struct evsel*,struct perf_sample*,char*) ;
 int sched_wakeup (struct timechart*,int ,int ,int,int,void*,char const*) ;

__attribute__((used)) static int
process_sample_sched_wakeup(struct timechart *tchart,
       struct evsel *evsel,
       struct perf_sample *sample,
       const char *backtrace)
{
 u8 flags = perf_evsel__intval(evsel, sample, "common_flags");
 int waker = perf_evsel__intval(evsel, sample, "common_pid");
 int wakee = perf_evsel__intval(evsel, sample, "pid");

 sched_wakeup(tchart, sample->cpu, sample->time, waker, wakee, flags, backtrace);
 return 0;
}
