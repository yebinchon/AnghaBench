
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trace_event_call {int dummy; } ;


 int down_write (int *) ;
 int event_mutex ;
 int lockdep_assert_held (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int probe_remove_event_call (struct trace_event_call*) ;
 int trace_event_sem ;
 int trace_types_lock ;
 int up_write (int *) ;

int trace_remove_event_call(struct trace_event_call *call)
{
 int ret;

 lockdep_assert_held(&event_mutex);

 mutex_lock(&trace_types_lock);
 down_write(&trace_event_sem);
 ret = probe_remove_event_call(call);
 up_write(&trace_event_sem);
 mutex_unlock(&trace_types_lock);

 return ret;
}
