
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct fuse_req {int intr_entry; int flags; } ;
struct fuse_iqueue {int lock; TYPE_1__* ops; int interrupts; } ;
struct TYPE_2__ {int (* wake_interrupt_and_unlock ) (struct fuse_iqueue*) ;} ;


 int EINVAL ;
 int FR_FINISHED ;
 int FR_INTERRUPTED ;
 int list_add_tail (int *,int *) ;
 int list_del_init (int *) ;
 scalar_t__ list_empty (int *) ;
 int smp_mb () ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int stub1 (struct fuse_iqueue*) ;
 scalar_t__ test_bit (int ,int *) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int queue_interrupt(struct fuse_iqueue *fiq, struct fuse_req *req)
{
 spin_lock(&fiq->lock);

 if (unlikely(!test_bit(FR_INTERRUPTED, &req->flags))) {
  spin_unlock(&fiq->lock);
  return -EINVAL;
 }

 if (list_empty(&req->intr_entry)) {
  list_add_tail(&req->intr_entry, &fiq->interrupts);




  smp_mb();
  if (test_bit(FR_FINISHED, &req->flags)) {
   list_del_init(&req->intr_entry);
   spin_unlock(&fiq->lock);
   return 0;
  }
  fiq->ops->wake_interrupt_and_unlock(fiq);
 } else {
  spin_unlock(&fiq->lock);
 }
 return 0;
}
