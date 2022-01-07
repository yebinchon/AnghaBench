
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trace_event_call {int * print_fmt; } ;


 int kfree (int *) ;

__attribute__((used)) static void free_synth_event_print_fmt(struct trace_event_call *call)
{
 if (call) {
  kfree(call->print_fmt);
  call->print_fmt = ((void*)0);
 }
}
