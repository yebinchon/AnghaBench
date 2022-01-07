
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ring_buffer {int wakeup; int nest; int head; TYPE_1__* user_page; } ;
struct perf_output_handle {unsigned long wakeup; struct ring_buffer* rb; } ;
struct TYPE_2__ {int data_head; } ;


 unsigned int READ_ONCE (int ) ;
 int WRITE_ONCE (int ,int) ;
 int barrier () ;
 unsigned long local_read (int *) ;
 int perf_output_wakeup (struct perf_output_handle*) ;
 int preempt_enable () ;
 int smp_wmb () ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static void perf_output_put_handle(struct perf_output_handle *handle)
{
 struct ring_buffer *rb = handle->rb;
 unsigned long head;
 unsigned int nest;





 nest = READ_ONCE(rb->nest);
 if (nest > 1) {
  WRITE_ONCE(rb->nest, nest - 1);
  goto out;
 }

again:
 barrier();
 head = local_read(&rb->head);
 smp_wmb();
 WRITE_ONCE(rb->user_page->data_head, head);






 barrier();
 WRITE_ONCE(rb->nest, 0);





 barrier();
 if (unlikely(head != local_read(&rb->head))) {
  WRITE_ONCE(rb->nest, 1);
  goto again;
 }

 if (handle->wakeup != local_read(&rb->wakeup))
  perf_output_wakeup(handle);

out:
 preempt_enable();
}
