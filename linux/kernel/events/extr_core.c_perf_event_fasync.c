
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_event {struct fasync_struct* fasync; struct perf_event* parent; } ;
struct fasync_struct {int dummy; } ;



__attribute__((used)) static inline struct fasync_struct **perf_event_fasync(struct perf_event *event)
{

 if (event->parent)
  event = event->parent;
 return &event->fasync;
}
