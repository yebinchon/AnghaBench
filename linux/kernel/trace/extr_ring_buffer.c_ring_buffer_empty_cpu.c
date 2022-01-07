
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ring_buffer_per_cpu {int dummy; } ;
struct ring_buffer {struct ring_buffer_per_cpu** buffers; int cpumask; } ;


 int cpumask_test_cpu (int,int ) ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;
 int rb_per_cpu_empty (struct ring_buffer_per_cpu*) ;
 int rb_reader_lock (struct ring_buffer_per_cpu*) ;
 int rb_reader_unlock (struct ring_buffer_per_cpu*,int) ;

bool ring_buffer_empty_cpu(struct ring_buffer *buffer, int cpu)
{
 struct ring_buffer_per_cpu *cpu_buffer;
 unsigned long flags;
 bool dolock;
 int ret;

 if (!cpumask_test_cpu(cpu, buffer->cpumask))
  return 1;

 cpu_buffer = buffer->buffers[cpu];
 local_irq_save(flags);
 dolock = rb_reader_lock(cpu_buffer);
 ret = rb_per_cpu_empty(cpu_buffer);
 rb_reader_unlock(cpu_buffer, dolock);
 local_irq_restore(flags);

 return ret;
}
