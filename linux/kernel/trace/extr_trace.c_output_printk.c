
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {int buffer; } ;
struct trace_iterator {TYPE_3__ seq; int ent; } ;
struct trace_event {TYPE_2__* funcs; } ;
struct trace_event_call {struct trace_event event; } ;
struct trace_event_buffer {int entry; TYPE_1__* trace_file; } ;
struct TYPE_6__ {int (* trace ) (struct trace_iterator*,int ,struct trace_event*) ;} ;
struct TYPE_5__ {struct trace_event_call* event_call; } ;


 scalar_t__ WARN_ON_ONCE (int) ;
 int printk (char*,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 (struct trace_iterator*,int ,struct trace_event*) ;
 int trace_seq_init (TYPE_3__*) ;
 int trace_seq_putc (TYPE_3__*,int ) ;
 int tracepoint_iter_lock ;
 struct trace_iterator* tracepoint_print_iter ;

__attribute__((used)) static void output_printk(struct trace_event_buffer *fbuffer)
{
 struct trace_event_call *event_call;
 struct trace_event *event;
 unsigned long flags;
 struct trace_iterator *iter = tracepoint_print_iter;


 if (WARN_ON_ONCE(!iter))
  return;

 event_call = fbuffer->trace_file->event_call;
 if (!event_call || !event_call->event.funcs ||
     !event_call->event.funcs->trace)
  return;

 event = &fbuffer->trace_file->event_call->event;

 spin_lock_irqsave(&tracepoint_iter_lock, flags);
 trace_seq_init(&iter->seq);
 iter->ent = fbuffer->entry;
 event_call->event.funcs->trace(iter, 0, event);
 trace_seq_putc(&iter->seq, 0);
 printk("%s", iter->seq.buffer);

 spin_unlock_irqrestore(&tracepoint_iter_lock, flags);
}
