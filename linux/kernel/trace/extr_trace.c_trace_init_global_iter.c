
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct trace_iterator {int iter_flags; TYPE_4__* tr; TYPE_2__* trace_buffer; TYPE_1__* trace; int cpu_file; } ;
struct TYPE_6__ {int buffer; } ;
struct TYPE_8__ {size_t clock_id; TYPE_2__ trace_buffer; TYPE_1__* current_trace; } ;
struct TYPE_7__ {scalar_t__ in_ns; } ;
struct TYPE_5__ {int (* open ) (struct trace_iterator*) ;} ;


 int RING_BUFFER_ALL_CPUS ;
 int TRACE_FILE_ANNOTATE ;
 int TRACE_FILE_TIME_IN_NS ;
 TYPE_4__ global_trace ;
 scalar_t__ ring_buffer_overruns (int ) ;
 int stub1 (struct trace_iterator*) ;
 TYPE_3__* trace_clocks ;

void trace_init_global_iter(struct trace_iterator *iter)
{
 iter->tr = &global_trace;
 iter->trace = iter->tr->current_trace;
 iter->cpu_file = RING_BUFFER_ALL_CPUS;
 iter->trace_buffer = &global_trace.trace_buffer;

 if (iter->trace && iter->trace->open)
  iter->trace->open(iter);


 if (ring_buffer_overruns(iter->trace_buffer->buffer))
  iter->iter_flags |= TRACE_FILE_ANNOTATE;


 if (trace_clocks[iter->tr->clock_id].in_ns)
  iter->iter_flags |= TRACE_FILE_TIME_IN_NS;
}
