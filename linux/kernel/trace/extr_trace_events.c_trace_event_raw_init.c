
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trace_event_call {int event; } ;


 int ENODEV ;
 int register_trace_event (int *) ;

int trace_event_raw_init(struct trace_event_call *call)
{
 int id;

 id = register_trace_event(&call->event);
 if (!id)
  return -ENODEV;

 return 0;
}
