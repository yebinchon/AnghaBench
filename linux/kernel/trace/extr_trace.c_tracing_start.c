
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct ring_buffer {int dummy; } ;
struct TYPE_5__ {struct ring_buffer* buffer; } ;
struct TYPE_4__ {struct ring_buffer* buffer; } ;
struct TYPE_6__ {scalar_t__ stop_count; int start_lock; int max_lock; TYPE_2__ max_buffer; TYPE_1__ trace_buffer; } ;


 int WARN_ON_ONCE (int) ;
 int arch_spin_lock (int *) ;
 int arch_spin_unlock (int *) ;
 TYPE_3__ global_trace ;
 int raw_spin_lock_irqsave (int *,unsigned long) ;
 int raw_spin_unlock_irqrestore (int *,unsigned long) ;
 int ring_buffer_record_enable (struct ring_buffer*) ;
 scalar_t__ tracing_disabled ;

void tracing_start(void)
{
 struct ring_buffer *buffer;
 unsigned long flags;

 if (tracing_disabled)
  return;

 raw_spin_lock_irqsave(&global_trace.start_lock, flags);
 if (--global_trace.stop_count) {
  if (global_trace.stop_count < 0) {

   WARN_ON_ONCE(1);
   global_trace.stop_count = 0;
  }
  goto out;
 }


 arch_spin_lock(&global_trace.max_lock);

 buffer = global_trace.trace_buffer.buffer;
 if (buffer)
  ring_buffer_record_enable(buffer);







 arch_spin_unlock(&global_trace.max_lock);

 out:
 raw_spin_unlock_irqrestore(&global_trace.start_lock, flags);
}
