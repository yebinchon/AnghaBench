
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef union perf_event {int dummy; } perf_event ;
struct TYPE_2__ {int last; int data; } ;
struct trace {TYPE_1__ oe; int evlist; int sort_events; } ;


 int __trace__deliver_event (struct trace*,union perf_event*) ;
 int ordered_events__queue (int *,union perf_event*,int ,int ) ;
 int perf_evlist__parse_sample_timestamp (int ,union perf_event*,int *) ;
 int trace__flush_events (struct trace*) ;

__attribute__((used)) static int trace__deliver_event(struct trace *trace, union perf_event *event)
{
 int err;

 if (!trace->sort_events)
  return __trace__deliver_event(trace, event);

 err = perf_evlist__parse_sample_timestamp(trace->evlist, event, &trace->oe.last);
 if (err && err != -1)
  return err;

 err = ordered_events__queue(&trace->oe.data, event, trace->oe.last, 0);
 if (err)
  return err;

 return trace__flush_events(trace);
}
