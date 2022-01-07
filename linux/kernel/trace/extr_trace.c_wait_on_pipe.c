
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct trace_iterator {int cpu_file; TYPE_1__* trace_buffer; } ;
struct TYPE_2__ {int buffer; } ;


 int ring_buffer_wait (int ,int ,int) ;
 scalar_t__ trace_buffer_iter (struct trace_iterator*,int ) ;

__attribute__((used)) static int wait_on_pipe(struct trace_iterator *iter, int full)
{

 if (trace_buffer_iter(iter, iter->cpu_file))
  return 0;

 return ring_buffer_wait(iter->trace_buffer->buffer, iter->cpu_file,
    full);
}
