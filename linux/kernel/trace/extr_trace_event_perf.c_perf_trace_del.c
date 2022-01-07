
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct trace_event_call {TYPE_1__* class; } ;
struct perf_event {int hlist_entry; struct trace_event_call* tp_event; } ;
struct TYPE_2__ {int (* reg ) (struct trace_event_call*,int ,struct perf_event*) ;} ;


 int TRACE_REG_PERF_DEL ;
 int hlist_del_rcu (int *) ;
 int stub1 (struct trace_event_call*,int ,struct perf_event*) ;

void perf_trace_del(struct perf_event *p_event, int flags)
{
 struct trace_event_call *tp_event = p_event->tp_event;






 if (!tp_event->class->reg(tp_event, TRACE_REG_PERF_DEL, p_event))
  hlist_del_rcu(&p_event->hlist_entry);
}
