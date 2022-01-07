
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct ring_buffer* buffer; } ;
struct trace_array {int flags; scalar_t__ stop_count; int start_lock; TYPE_1__ trace_buffer; } ;
struct ring_buffer {int dummy; } ;


 int TRACE_ARRAY_FL_GLOBAL ;
 int WARN_ON_ONCE (int) ;
 int raw_spin_lock_irqsave (int *,unsigned long) ;
 int raw_spin_unlock_irqrestore (int *,unsigned long) ;
 int ring_buffer_record_enable (struct ring_buffer*) ;
 scalar_t__ tracing_disabled ;
 void tracing_start () ;

__attribute__((used)) static void tracing_start_tr(struct trace_array *tr)
{
 struct ring_buffer *buffer;
 unsigned long flags;

 if (tracing_disabled)
  return;


 if (tr->flags & TRACE_ARRAY_FL_GLOBAL)
  return tracing_start();

 raw_spin_lock_irqsave(&tr->start_lock, flags);

 if (--tr->stop_count) {
  if (tr->stop_count < 0) {

   WARN_ON_ONCE(1);
   tr->stop_count = 0;
  }
  goto out;
 }

 buffer = tr->trace_buffer.buffer;
 if (buffer)
  ring_buffer_record_enable(buffer);

 out:
 raw_spin_unlock_irqrestore(&tr->start_lock, flags);
}
