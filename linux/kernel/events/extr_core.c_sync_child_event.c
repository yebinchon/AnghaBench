
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct task_struct {int dummy; } ;
struct TYPE_2__ {scalar_t__ inherit_stat; } ;
struct perf_event {int child_total_time_running; int total_time_running; int child_total_time_enabled; int total_time_enabled; int child_count; TYPE_1__ attr; struct perf_event* parent; } ;


 int atomic64_add (int ,int *) ;
 int perf_event_count (struct perf_event*) ;
 int perf_event_read_event (struct perf_event*,struct task_struct*) ;

__attribute__((used)) static void sync_child_event(struct perf_event *child_event,
          struct task_struct *child)
{
 struct perf_event *parent_event = child_event->parent;
 u64 child_val;

 if (child_event->attr.inherit_stat)
  perf_event_read_event(child_event, child);

 child_val = perf_event_count(child_event);




 atomic64_add(child_val, &parent_event->child_count);
 atomic64_add(child_event->total_time_enabled,
       &parent_event->child_total_time_enabled);
 atomic64_add(child_event->total_time_running,
       &parent_event->child_total_time_running);
}
