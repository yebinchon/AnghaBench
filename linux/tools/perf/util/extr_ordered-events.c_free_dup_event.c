
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union perf_event {int dummy; } perf_event ;
struct ordered_events {scalar_t__ copy_on_queue; } ;


 int __free_dup_event (struct ordered_events*,union perf_event*) ;

__attribute__((used)) static void free_dup_event(struct ordered_events *oe, union perf_event *event)
{
 if (oe->copy_on_queue)
  __free_dup_event(oe, event);
}
