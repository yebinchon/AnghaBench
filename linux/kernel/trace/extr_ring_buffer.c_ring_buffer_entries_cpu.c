
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ring_buffer_per_cpu {int dummy; } ;
struct ring_buffer {struct ring_buffer_per_cpu** buffers; int cpumask; } ;


 int cpumask_test_cpu (int,int ) ;
 unsigned long rb_num_of_entries (struct ring_buffer_per_cpu*) ;

unsigned long ring_buffer_entries_cpu(struct ring_buffer *buffer, int cpu)
{
 struct ring_buffer_per_cpu *cpu_buffer;

 if (!cpumask_test_cpu(cpu, buffer->cpumask))
  return 0;

 cpu_buffer = buffer->buffers[cpu];

 return rb_num_of_entries(cpu_buffer);
}
