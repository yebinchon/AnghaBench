
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trace_iterator {int idx; int cpu; } ;
struct ring_buffer_iter {int dummy; } ;


 int ring_buffer_read (struct ring_buffer_iter*,int *) ;
 struct ring_buffer_iter* trace_buffer_iter (struct trace_iterator*,int ) ;

__attribute__((used)) static void trace_iterator_increment(struct trace_iterator *iter)
{
 struct ring_buffer_iter *buf_iter = trace_buffer_iter(iter, iter->cpu);

 iter->idx++;
 if (buf_iter)
  ring_buffer_read(buf_iter, ((void*)0));
}
