
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ring_buffer_per_cpu {int record_disabled; } ;
struct ring_buffer_event {int dummy; } ;
struct ring_buffer {struct ring_buffer_per_cpu** buffers; int cpumask; int record_disabled; } ;


 unsigned long BUF_MAX_DATA_SIZE ;
 int atomic_read (int *) ;
 int cpumask_test_cpu (int,int ) ;
 int preempt_disable_notrace () ;
 int preempt_enable_notrace () ;
 int raw_smp_processor_id () ;
 struct ring_buffer_event* rb_reserve_next_event (struct ring_buffer*,struct ring_buffer_per_cpu*,unsigned long) ;
 int trace_recursive_lock (struct ring_buffer_per_cpu*) ;
 int trace_recursive_unlock (struct ring_buffer_per_cpu*) ;
 scalar_t__ unlikely (int) ;

struct ring_buffer_event *
ring_buffer_lock_reserve(struct ring_buffer *buffer, unsigned long length)
{
 struct ring_buffer_per_cpu *cpu_buffer;
 struct ring_buffer_event *event;
 int cpu;


 preempt_disable_notrace();

 if (unlikely(atomic_read(&buffer->record_disabled)))
  goto out;

 cpu = raw_smp_processor_id();

 if (unlikely(!cpumask_test_cpu(cpu, buffer->cpumask)))
  goto out;

 cpu_buffer = buffer->buffers[cpu];

 if (unlikely(atomic_read(&cpu_buffer->record_disabled)))
  goto out;

 if (unlikely(length > BUF_MAX_DATA_SIZE))
  goto out;

 if (unlikely(trace_recursive_lock(cpu_buffer)))
  goto out;

 event = rb_reserve_next_event(buffer, cpu_buffer, length);
 if (!event)
  goto out_unlock;

 return event;

 out_unlock:
 trace_recursive_unlock(cpu_buffer);
 out:
 preempt_enable_notrace();
 return ((void*)0);
}
