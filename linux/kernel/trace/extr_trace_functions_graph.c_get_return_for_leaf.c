
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct trace_iterator {int cpu; TYPE_1__* trace_buffer; struct fgraph_data* private; } ;
struct ring_buffer_iter {int dummy; } ;
struct ring_buffer_event {int dummy; } ;
struct TYPE_10__ {scalar_t__ func; } ;
struct TYPE_8__ {scalar_t__ type; scalar_t__ pid; } ;
struct ftrace_graph_ret_entry {TYPE_5__ ret; TYPE_3__ ent; } ;
struct TYPE_9__ {scalar_t__ func; } ;
struct TYPE_7__ {scalar_t__ pid; } ;
struct ftrace_graph_ent_entry {TYPE_4__ graph_ent; TYPE_2__ ent; } ;
struct fgraph_data {struct ftrace_graph_ret_entry ret; struct ftrace_graph_ent_entry ent; scalar_t__ failed; } ;
struct TYPE_6__ {int buffer; } ;


 scalar_t__ TRACE_GRAPH_RET ;
 int ring_buffer_consume (int ,int ,int *,int *) ;
 struct ftrace_graph_ret_entry* ring_buffer_event_data (struct ring_buffer_event*) ;
 struct ring_buffer_event* ring_buffer_iter_peek (struct ring_buffer_iter*,int *) ;
 struct ring_buffer_event* ring_buffer_peek (int ,int ,int *,int *) ;
 int ring_buffer_read (struct ring_buffer_iter*,int *) ;
 struct ring_buffer_iter* trace_buffer_iter (struct trace_iterator*,int ) ;

__attribute__((used)) static struct ftrace_graph_ret_entry *
get_return_for_leaf(struct trace_iterator *iter,
  struct ftrace_graph_ent_entry *curr)
{
 struct fgraph_data *data = iter->private;
 struct ring_buffer_iter *ring_iter = ((void*)0);
 struct ring_buffer_event *event;
 struct ftrace_graph_ret_entry *next;





 if (data && data->failed) {
  curr = &data->ent;
  next = &data->ret;
 } else {

  ring_iter = trace_buffer_iter(iter, iter->cpu);


  if (ring_iter)
   event = ring_buffer_iter_peek(ring_iter, ((void*)0));
  else {




   ring_buffer_consume(iter->trace_buffer->buffer, iter->cpu,
         ((void*)0), ((void*)0));
   event = ring_buffer_peek(iter->trace_buffer->buffer, iter->cpu,
       ((void*)0), ((void*)0));
  }

  if (!event)
   return ((void*)0);

  next = ring_buffer_event_data(event);

  if (data) {




   data->ent = *curr;





   if (next->ent.type == TRACE_GRAPH_RET)
    data->ret = *next;
   else
    data->ret.ent.type = next->ent.type;
  }
 }

 if (next->ent.type != TRACE_GRAPH_RET)
  return ((void*)0);

 if (curr->ent.pid != next->ent.pid ||
   curr->graph_ent.func != next->ret.func)
  return ((void*)0);


 if (ring_iter)
  ring_buffer_read(ring_iter, ((void*)0));

 return next;
}
