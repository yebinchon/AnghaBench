
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {long flags; int entry; int * func; int * private; } ;
typedef TYPE_1__ wait_queue_entry_t ;
struct wait_queue_head {int lock; } ;


 int INIT_LIST_HEAD (int *) ;
 long WQ_FLAG_BOOKMARK ;
 int __wake_up_common (struct wait_queue_head*,unsigned int,int,int,void*,TYPE_1__*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void __wake_up_common_lock(struct wait_queue_head *wq_head, unsigned int mode,
   int nr_exclusive, int wake_flags, void *key)
{
 unsigned long flags;
 wait_queue_entry_t bookmark;

 bookmark.flags = 0;
 bookmark.private = ((void*)0);
 bookmark.func = ((void*)0);
 INIT_LIST_HEAD(&bookmark.entry);

 do {
  spin_lock_irqsave(&wq_head->lock, flags);
  nr_exclusive = __wake_up_common(wq_head, mode, nr_exclusive,
      wake_flags, key, &bookmark);
  spin_unlock_irqrestore(&wq_head->lock, flags);
 } while (bookmark.flags & WQ_FLAG_BOOKMARK);
}
