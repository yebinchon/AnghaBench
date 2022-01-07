
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct trace_array {TYPE_1__* current_trace; } ;
struct TYPE_2__ {int (* reset ) (struct trace_array*) ;int enabled; } ;


 TYPE_1__ nop_trace ;
 int stub1 (struct trace_array*) ;

__attribute__((used)) static void tracing_set_nop(struct trace_array *tr)
{
 if (tr->current_trace == &nop_trace)
  return;

 tr->current_trace->enabled--;

 if (tr->current_trace->reset)
  tr->current_trace->reset(tr);

 tr->current_trace = &nop_trace;
}
