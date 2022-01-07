
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ring_buffer_per_cpu {int record_disabled; } ;
struct ring_buffer {struct ring_buffer_per_cpu** buffers; int cpumask; } ;


 int atomic_dec (int *) ;
 int cpumask_test_cpu (int,int ) ;

void ring_buffer_record_enable_cpu(struct ring_buffer *buffer, int cpu)
{
 struct ring_buffer_per_cpu *cpu_buffer;

 if (!cpumask_test_cpu(cpu, buffer->cpumask))
  return;

 cpu_buffer = buffer->buffers[cpu];
 atomic_dec(&cpu_buffer->record_disabled);
}
