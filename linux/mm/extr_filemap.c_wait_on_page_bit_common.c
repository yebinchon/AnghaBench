
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int lock; } ;
typedef TYPE_1__ wait_queue_head_t ;
struct TYPE_10__ {int entry; int func; int flags; } ;
typedef TYPE_2__ wait_queue_entry_t ;
struct wait_page_queue {int bit_nr; struct page* page; TYPE_2__ wait; } ;
struct page {int flags; } ;
typedef enum behavior { ____Placeholder_behavior } behavior ;


 int DROP ;
 int EINTR ;
 int EXCLUSIVE ;
 int PG_locked ;
 int PageSwapBacked (struct page*) ;
 int PageUptodate (struct page*) ;
 scalar_t__ PageWorkingset (struct page*) ;
 int SHARED ;
 int SetPageWaiters (struct page*) ;
 int WQ_FLAG_EXCLUSIVE ;
 int __add_wait_queue_entry_tail (TYPE_1__*,TYPE_2__*) ;
 int current ;
 int delayacct_thrashing_end () ;
 int delayacct_thrashing_start () ;
 int finish_wait (TYPE_1__*,TYPE_2__*) ;
 int init_wait (TYPE_2__*) ;
 int io_schedule () ;
 scalar_t__ likely (int) ;
 int list_empty (int *) ;
 int psi_memstall_enter (unsigned long*) ;
 int psi_memstall_leave (unsigned long*) ;
 int put_page (struct page*) ;
 int set_current_state (int) ;
 scalar_t__ signal_pending_state (int,int ) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 int test_and_set_bit_lock (int,int *) ;
 int test_bit (int,int *) ;
 int wake_page_function ;

__attribute__((used)) static inline int wait_on_page_bit_common(wait_queue_head_t *q,
 struct page *page, int bit_nr, int state, enum behavior behavior)
{
 struct wait_page_queue wait_page;
 wait_queue_entry_t *wait = &wait_page.wait;
 bool bit_is_set;
 bool thrashing = 0;
 bool delayacct = 0;
 unsigned long pflags;
 int ret = 0;

 if (bit_nr == PG_locked &&
     !PageUptodate(page) && PageWorkingset(page)) {
  if (!PageSwapBacked(page)) {
   delayacct_thrashing_start();
   delayacct = 1;
  }
  psi_memstall_enter(&pflags);
  thrashing = 1;
 }

 init_wait(wait);
 wait->flags = behavior == EXCLUSIVE ? WQ_FLAG_EXCLUSIVE : 0;
 wait->func = wake_page_function;
 wait_page.page = page;
 wait_page.bit_nr = bit_nr;

 for (;;) {
  spin_lock_irq(&q->lock);

  if (likely(list_empty(&wait->entry))) {
   __add_wait_queue_entry_tail(q, wait);
   SetPageWaiters(page);
  }

  set_current_state(state);

  spin_unlock_irq(&q->lock);

  bit_is_set = test_bit(bit_nr, &page->flags);
  if (behavior == DROP)
   put_page(page);

  if (likely(bit_is_set))
   io_schedule();

  if (behavior == EXCLUSIVE) {
   if (!test_and_set_bit_lock(bit_nr, &page->flags))
    break;
  } else if (behavior == SHARED) {
   if (!test_bit(bit_nr, &page->flags))
    break;
  }

  if (signal_pending_state(state, current)) {
   ret = -EINTR;
   break;
  }

  if (behavior == DROP) {







   break;
  }
 }

 finish_wait(q, wait);

 if (thrashing) {
  if (delayacct)
   delayacct_thrashing_end();
  psi_memstall_leave(&pflags);
 }
 return ret;
}
