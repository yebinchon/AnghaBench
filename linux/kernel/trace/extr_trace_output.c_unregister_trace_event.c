
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trace_event {int dummy; } ;


 int __unregister_trace_event (struct trace_event*) ;
 int down_write (int *) ;
 int trace_event_sem ;
 int up_write (int *) ;

int unregister_trace_event(struct trace_event *event)
{
 down_write(&trace_event_sem);
 __unregister_trace_event(event);
 up_write(&trace_event_sem);

 return 0;
}
