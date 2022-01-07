
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct ring_buffer* buffer; } ;
struct trace_array {int flags; int start_lock; TYPE_1__ trace_buffer; int stop_count; } ;
struct ring_buffer {int dummy; } ;


 int TRACE_ARRAY_FL_GLOBAL ;
 int raw_spin_lock_irqsave (int *,unsigned long) ;
 int raw_spin_unlock_irqrestore (int *,unsigned long) ;
 int ring_buffer_record_disable (struct ring_buffer*) ;
 void tracing_stop () ;

__attribute__((used)) static void tracing_stop_tr(struct trace_array *tr)
{
 struct ring_buffer *buffer;
 unsigned long flags;


 if (tr->flags & TRACE_ARRAY_FL_GLOBAL)
  return tracing_stop();

 raw_spin_lock_irqsave(&tr->start_lock, flags);
 if (tr->stop_count++)
  goto out;

 buffer = tr->trace_buffer.buffer;
 if (buffer)
  ring_buffer_record_disable(buffer);

 out:
 raw_spin_unlock_irqrestore(&tr->start_lock, flags);
}
