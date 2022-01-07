
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int lock; } ;
typedef TYPE_1__ wait_queue_head_t ;
struct TYPE_8__ {int entry; } ;
typedef TYPE_2__ wait_queue_entry_t ;


 int ERESTARTSYS ;
 int TASK_INTERRUPTIBLE ;
 int __add_wait_queue_entry_tail (TYPE_1__*,TYPE_2__*) ;
 int current ;
 scalar_t__ likely (int ) ;
 int list_empty (int *) ;
 int schedule () ;
 int set_current_state (int ) ;
 scalar_t__ signal_pending (int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

int do_wait_intr(wait_queue_head_t *wq, wait_queue_entry_t *wait)
{
 if (likely(list_empty(&wait->entry)))
  __add_wait_queue_entry_tail(wq, wait);

 set_current_state(TASK_INTERRUPTIBLE);
 if (signal_pending(current))
  return -ERESTARTSYS;

 spin_unlock(&wq->lock);
 schedule();
 spin_lock(&wq->lock);

 return 0;
}
