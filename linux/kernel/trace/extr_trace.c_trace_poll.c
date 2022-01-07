
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct trace_iterator {int cpu_file; TYPE_1__* trace_buffer; struct trace_array* tr; } ;
struct trace_array {int trace_flags; } ;
struct file {int dummy; } ;
typedef int poll_table ;
typedef int __poll_t ;
struct TYPE_2__ {int buffer; } ;


 int EPOLLIN ;
 int EPOLLRDNORM ;
 int TRACE_ITER_BLOCK ;
 int ring_buffer_poll_wait (int ,int ,struct file*,int *) ;
 scalar_t__ trace_buffer_iter (struct trace_iterator*,int ) ;

__attribute__((used)) static __poll_t
trace_poll(struct trace_iterator *iter, struct file *filp, poll_table *poll_table)
{
 struct trace_array *tr = iter->tr;


 if (trace_buffer_iter(iter, iter->cpu_file))
  return EPOLLIN | EPOLLRDNORM;

 if (tr->trace_flags & TRACE_ITER_BLOCK)



  return EPOLLIN | EPOLLRDNORM;
 else
  return ring_buffer_poll_wait(iter->trace_buffer->buffer, iter->cpu_file,
          filp, poll_table);
}
