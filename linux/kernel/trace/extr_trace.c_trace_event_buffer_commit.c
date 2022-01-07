
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct trace_event_buffer {int pc; int flags; int entry; int event; int buffer; int trace_file; } ;
struct TYPE_2__ {int key; } ;


 int event_trigger_unlock_commit (int ,int ,int ,int ,int ,int ) ;
 int output_printk (struct trace_event_buffer*) ;
 scalar_t__ static_key_false (int *) ;
 TYPE_1__ tracepoint_printk_key ;

void trace_event_buffer_commit(struct trace_event_buffer *fbuffer)
{
 if (static_key_false(&tracepoint_printk_key.key))
  output_printk(fbuffer);

 event_trigger_unlock_commit(fbuffer->trace_file, fbuffer->buffer,
        fbuffer->event, fbuffer->entry,
        fbuffer->flags, fbuffer->pc);
}
