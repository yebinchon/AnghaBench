
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stop_event_data {struct perf_event* event; } ;
struct ring_buffer {int dummy; } ;
struct remote_output {int err; struct ring_buffer* rb; } ;
struct perf_event {int rb; struct perf_event* parent; } ;


 int __perf_event_stop (struct stop_event_data*) ;
 int has_aux (struct perf_event*) ;
 struct ring_buffer* rcu_dereference (int ) ;

__attribute__((used)) static void __perf_event_output_stop(struct perf_event *event, void *data)
{
 struct perf_event *parent = event->parent;
 struct remote_output *ro = data;
 struct ring_buffer *rb = ro->rb;
 struct stop_event_data sd = {
  .event = event,
 };

 if (!has_aux(event))
  return;

 if (!parent)
  parent = event;
 if (rcu_dereference(parent->rb) == rb)
  ro->err = __perf_event_stop(&sd);
}
