
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union perf_event {int dummy; } perf_event ;
struct ordered_events {scalar_t__ copy_on_queue; } ;


 union perf_event* __dup_event (struct ordered_events*,union perf_event*) ;

__attribute__((used)) static union perf_event *dup_event(struct ordered_events *oe,
       union perf_event *event)
{
 return oe->copy_on_queue ? __dup_event(oe, event) : event;
}
