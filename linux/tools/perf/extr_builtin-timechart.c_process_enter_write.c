
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timechart {int dummy; } ;
struct perf_sample {int time; int tid; } ;
struct evsel {int dummy; } ;


 int IOTYPE_WRITE ;
 long perf_evsel__intval (struct evsel*,struct perf_sample*,char*) ;
 int pid_begin_io_sample (struct timechart*,int ,int ,int ,long) ;

__attribute__((used)) static int
process_enter_write(struct timechart *tchart,
      struct evsel *evsel,
      struct perf_sample *sample)
{
 long fd = perf_evsel__intval(evsel, sample, "fd");
 return pid_begin_io_sample(tchart, sample->tid, IOTYPE_WRITE,
       sample->time, fd);
}
