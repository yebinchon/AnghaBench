
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ buffer; } ;
struct trace_array {int buffer_disabled; TYPE_1__ trace_buffer; } ;


 int ring_buffer_record_is_on (scalar_t__) ;

bool tracer_tracing_is_on(struct trace_array *tr)
{
 if (tr->trace_buffer.buffer)
  return ring_buffer_record_is_on(tr->trace_buffer.buffer);
 return !tr->buffer_disabled;
}
