
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trace_event_call {int dummy; } ;


 int __add_event_to_tracers (struct trace_event_call*) ;
 int __register_event (struct trace_event_call*,int *) ;
 int event_mutex ;
 int lockdep_assert_held (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int trace_types_lock ;

int trace_add_event_call(struct trace_event_call *call)
{
 int ret;
 lockdep_assert_held(&event_mutex);

 mutex_lock(&trace_types_lock);

 ret = __register_event(call, ((void*)0));
 if (ret >= 0)
  __add_event_to_tracers(call);

 mutex_unlock(&trace_types_lock);
 return ret;
}
