
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trace_array {int dummy; } ;


 int __ftrace_clear_event_pids (struct trace_array*) ;
 int event_mutex ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static void ftrace_clear_event_pids(struct trace_array *tr)
{
 mutex_lock(&event_mutex);
 __ftrace_clear_event_pids(tr);
 mutex_unlock(&event_mutex);
}
