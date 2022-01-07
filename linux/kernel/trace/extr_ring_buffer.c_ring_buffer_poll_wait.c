
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rb_irq_work {int waiters_pending; int waiters; } ;
struct ring_buffer_per_cpu {struct rb_irq_work irq_work; } ;
struct ring_buffer {struct ring_buffer_per_cpu** buffers; int cpumask; struct rb_irq_work irq_work; } ;
struct file {int dummy; } ;
typedef int poll_table ;
typedef int __poll_t ;


 int EINVAL ;
 int EPOLLIN ;
 int EPOLLRDNORM ;
 int RING_BUFFER_ALL_CPUS ;
 int cpumask_test_cpu (int,int ) ;
 int poll_wait (struct file*,int *,int *) ;
 int ring_buffer_empty (struct ring_buffer*) ;
 int ring_buffer_empty_cpu (struct ring_buffer*,int) ;
 int smp_mb () ;

__poll_t ring_buffer_poll_wait(struct ring_buffer *buffer, int cpu,
     struct file *filp, poll_table *poll_table)
{
 struct ring_buffer_per_cpu *cpu_buffer;
 struct rb_irq_work *work;

 if (cpu == RING_BUFFER_ALL_CPUS)
  work = &buffer->irq_work;
 else {
  if (!cpumask_test_cpu(cpu, buffer->cpumask))
   return -EINVAL;

  cpu_buffer = buffer->buffers[cpu];
  work = &cpu_buffer->irq_work;
 }

 poll_wait(filp, &work->waiters, poll_table);
 work->waiters_pending = 1;
 smp_mb();

 if ((cpu == RING_BUFFER_ALL_CPUS && !ring_buffer_empty(buffer)) ||
     (cpu != RING_BUFFER_ALL_CPUS && !ring_buffer_empty_cpu(buffer, cpu)))
  return EPOLLIN | EPOLLRDNORM;
 return 0;
}
