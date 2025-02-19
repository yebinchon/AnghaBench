
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct perf_sample {int dummy; } ;
struct evsel {int dummy; } ;
struct TYPE_2__ {int (* contended_event ) (struct evsel*,struct perf_sample*) ;} ;


 int stub1 (struct evsel*,struct perf_sample*) ;
 TYPE_1__* trace_handler ;

__attribute__((used)) static int perf_evsel__process_lock_contended(struct evsel *evsel,
           struct perf_sample *sample)
{
 if (trace_handler->contended_event)
  return trace_handler->contended_event(evsel, sample);
 return 0;
}
