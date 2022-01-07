
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ring_buffer {unsigned long aux_head; void* aux_priv; int aux_nest; scalar_t__ aux_watermark; scalar_t__ aux_wakeup; TYPE_1__* user_page; int aux_overwrite; int aux_refcount; int aux_mmap_count; } ;
struct perf_output_handle {unsigned long head; struct perf_event* event; struct ring_buffer* rb; int size; scalar_t__ wakeup; scalar_t__ aux_flags; } ;
struct perf_event {int pending_disable; struct perf_event* parent; } ;
struct TYPE_2__ {int aux_tail; } ;


 int CIRC_SPACE (unsigned long,unsigned long,unsigned long) ;
 void* READ_ONCE (int ) ;
 scalar_t__ WARN_ON_ONCE (unsigned int) ;
 int WRITE_ONCE (int ,unsigned int) ;
 int atomic_read (int *) ;
 unsigned long perf_aux_size (struct ring_buffer*) ;
 int perf_output_wakeup (struct perf_output_handle*) ;
 int rb_free_aux (struct ring_buffer*) ;
 int rb_has_aux (struct ring_buffer*) ;
 int refcount_inc_not_zero (int *) ;
 struct ring_buffer* ring_buffer_get (struct perf_event*) ;
 int ring_buffer_put (struct ring_buffer*) ;
 int smp_processor_id () ;

void *perf_aux_output_begin(struct perf_output_handle *handle,
       struct perf_event *event)
{
 struct perf_event *output_event = event;
 unsigned long aux_head, aux_tail;
 struct ring_buffer *rb;
 unsigned int nest;

 if (output_event->parent)
  output_event = output_event->parent;






 rb = ring_buffer_get(output_event);
 if (!rb)
  return ((void*)0);

 if (!rb_has_aux(rb))
  goto err;
 if (!atomic_read(&rb->aux_mmap_count))
  goto err;

 if (!refcount_inc_not_zero(&rb->aux_refcount))
  goto err;

 nest = READ_ONCE(rb->aux_nest);




 if (WARN_ON_ONCE(nest))
  goto err_put;

 WRITE_ONCE(rb->aux_nest, nest + 1);

 aux_head = rb->aux_head;

 handle->rb = rb;
 handle->event = event;
 handle->head = aux_head;
 handle->size = 0;
 handle->aux_flags = 0;






 if (!rb->aux_overwrite) {
  aux_tail = READ_ONCE(rb->user_page->aux_tail);
  handle->wakeup = rb->aux_wakeup + rb->aux_watermark;
  if (aux_head - aux_tail < perf_aux_size(rb))
   handle->size = CIRC_SPACE(aux_head, aux_tail, perf_aux_size(rb));






  if (!handle->size) {
   event->pending_disable = smp_processor_id();
   perf_output_wakeup(handle);
   WRITE_ONCE(rb->aux_nest, 0);
   goto err_put;
  }
 }

 return handle->rb->aux_priv;

err_put:

 rb_free_aux(rb);

err:
 ring_buffer_put(rb);
 handle->event = ((void*)0);

 return ((void*)0);
}
