
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union perf_event {int dummy; } perf_event ;
typedef int u64 ;
struct ordered_events {int dummy; } ;
struct ordered_event {int timestamp; } ;


 struct ordered_event* alloc_event (struct ordered_events*,union perf_event*) ;
 int queue_event (struct ordered_events*,struct ordered_event*) ;

__attribute__((used)) static struct ordered_event *
ordered_events__new_event(struct ordered_events *oe, u64 timestamp,
      union perf_event *event)
{
 struct ordered_event *new;

 new = alloc_event(oe, event);
 if (new) {
  new->timestamp = timestamp;
  queue_event(oe, new);
 }

 return new;
}
