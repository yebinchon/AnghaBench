
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ buffer; } ;
struct trace_array {scalar_t__ buffer_disabled; TYPE_1__ trace_buffer; } ;


 int ring_buffer_record_on (scalar_t__) ;
 int smp_wmb () ;

void tracer_tracing_on(struct trace_array *tr)
{
 if (tr->trace_buffer.buffer)
  ring_buffer_record_on(tr->trace_buffer.buffer);
 tr->buffer_disabled = 0;

 smp_wmb();
}
