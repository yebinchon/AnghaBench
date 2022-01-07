
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trace_iterator {struct ring_buffer_iter** buffer_iter; } ;
struct ring_buffer_iter {int dummy; } ;



__attribute__((used)) static inline struct ring_buffer_iter *
trace_buffer_iter(struct trace_iterator *iter, int cpu)
{
 return iter->buffer_iter ? iter->buffer_iter[cpu] : ((void*)0);
}
