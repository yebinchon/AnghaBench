
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct trace_event_call {scalar_t__ perf_refcount; int mod; int * perf_events; TYPE_1__* class; } ;
struct perf_event {struct trace_event_call* tp_event; } ;
struct TYPE_2__ {int (* reg ) (struct trace_event_call*,int ,int *) ;} ;


 int PERF_NR_CONTEXTS ;
 int TRACE_REG_PERF_UNREGISTER ;
 int free_percpu (int *) ;
 int module_put (int ) ;
 int ** perf_trace_buf ;
 int stub1 (struct trace_event_call*,int ,int *) ;
 int total_ref_count ;
 int tracepoint_synchronize_unregister () ;

__attribute__((used)) static void perf_trace_event_unreg(struct perf_event *p_event)
{
 struct trace_event_call *tp_event = p_event->tp_event;
 int i;

 if (--tp_event->perf_refcount > 0)
  goto out;

 tp_event->class->reg(tp_event, TRACE_REG_PERF_UNREGISTER, ((void*)0));





 tracepoint_synchronize_unregister();

 free_percpu(tp_event->perf_events);
 tp_event->perf_events = ((void*)0);

 if (!--total_ref_count) {
  for (i = 0; i < PERF_NR_CONTEXTS; i++) {
   free_percpu(perf_trace_buf[i]);
   perf_trace_buf[i] = ((void*)0);
  }
 }
out:
 module_put(tp_event->mod);
}
