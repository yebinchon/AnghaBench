
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union perf_event {int dummy; } perf_event ;
struct perf_sample {int dummy; } ;
struct evsel {int dummy; } ;
struct addr_location {int dummy; } ;


 int perl_process_event_generic (union perf_event*,struct perf_sample*,struct evsel*) ;
 int perl_process_tracepoint (struct perf_sample*,struct evsel*,struct addr_location*) ;

__attribute__((used)) static void perl_process_event(union perf_event *event,
          struct perf_sample *sample,
          struct evsel *evsel,
          struct addr_location *al)
{
 perl_process_tracepoint(sample, evsel, al);
 perl_process_event_generic(event, sample, evsel);
}
