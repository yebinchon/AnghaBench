
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trace_array {int * event_dir; } ;


 int __ftrace_clear_event_pids (struct trace_array*) ;
 int __ftrace_set_clr_event_nolock (struct trace_array*,int *,int *,int *,int ) ;
 int __trace_remove_event_dirs (struct trace_array*) ;
 int clear_event_triggers (struct trace_array*) ;
 int down_write (int *) ;
 int event_mutex ;
 int lockdep_assert_held (int *) ;
 int trace_event_sem ;
 int tracefs_remove_recursive (int *) ;
 int tracepoint_synchronize_unregister () ;
 int up_write (int *) ;

int event_trace_del_tracer(struct trace_array *tr)
{
 lockdep_assert_held(&event_mutex);


 clear_event_triggers(tr);


 __ftrace_clear_event_pids(tr);


 __ftrace_set_clr_event_nolock(tr, ((void*)0), ((void*)0), ((void*)0), 0);


 tracepoint_synchronize_unregister();

 down_write(&trace_event_sem);
 __trace_remove_event_dirs(tr);
 tracefs_remove_recursive(tr->event_dir);
 up_write(&trace_event_sem);

 tr->event_dir = ((void*)0);

 return 0;
}
