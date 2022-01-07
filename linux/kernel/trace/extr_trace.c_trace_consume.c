
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct trace_iterator {int lost_events; int ts; int cpu; TYPE_1__* trace_buffer; } ;
struct TYPE_2__ {int buffer; } ;


 int ring_buffer_consume (int ,int ,int *,int *) ;

__attribute__((used)) static void trace_consume(struct trace_iterator *iter)
{
 ring_buffer_consume(iter->trace_buffer->buffer, iter->cpu, &iter->ts,
       &iter->lost_events);
}
