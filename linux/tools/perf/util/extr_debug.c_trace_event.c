
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int size; } ;
union perf_event {TYPE_1__ header; } ;


 int dump_trace ;
 int print_binary (unsigned char*,int ,int,int ,union perf_event*) ;
 int trace_event_printer ;

void trace_event(union perf_event *event)
{
 unsigned char *raw_event = (void *)event;

 if (!dump_trace)
  return;

 print_binary(raw_event, event->header.size, 16,
       trace_event_printer, event);
}
