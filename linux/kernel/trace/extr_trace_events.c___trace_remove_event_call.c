
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trace_event_call {int * filter; } ;


 int event_remove (struct trace_event_call*) ;
 int free_event_filter (int *) ;
 int trace_destroy_fields (struct trace_event_call*) ;

__attribute__((used)) static void __trace_remove_event_call(struct trace_event_call *call)
{
 event_remove(call);
 trace_destroy_fields(call);
 free_event_filter(call->filter);
 call->filter = ((void*)0);
}
