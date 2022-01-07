
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ring_buffer_per_cpu {int record_disabled; } ;
struct ring_buffer_iter {struct ring_buffer_per_cpu* cpu_buffer; } ;
struct ring_buffer {int resize_disabled; struct ring_buffer_per_cpu** buffers; int cpumask; } ;
typedef int gfp_t ;


 int atomic_inc (int *) ;
 int cpumask_test_cpu (int,int ) ;
 struct ring_buffer_iter* kmalloc (int,int ) ;

struct ring_buffer_iter *
ring_buffer_read_prepare(struct ring_buffer *buffer, int cpu, gfp_t flags)
{
 struct ring_buffer_per_cpu *cpu_buffer;
 struct ring_buffer_iter *iter;

 if (!cpumask_test_cpu(cpu, buffer->cpumask))
  return ((void*)0);

 iter = kmalloc(sizeof(*iter), flags);
 if (!iter)
  return ((void*)0);

 cpu_buffer = buffer->buffers[cpu];

 iter->cpu_buffer = cpu_buffer;

 atomic_inc(&buffer->resize_disabled);
 atomic_inc(&cpu_buffer->record_disabled);

 return iter;
}
