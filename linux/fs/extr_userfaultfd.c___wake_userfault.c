
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct userfaultfd_wake_range {int dummy; } ;
struct TYPE_4__ {int lock; } ;
struct userfaultfd_ctx {TYPE_1__ fault_pending_wqh; TYPE_1__ fault_wqh; } ;


 int TASK_NORMAL ;
 int __wake_up (TYPE_1__*,int ,int,struct userfaultfd_wake_range*) ;
 int __wake_up_locked_key (TYPE_1__*,int ,struct userfaultfd_wake_range*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 scalar_t__ waitqueue_active (TYPE_1__*) ;

__attribute__((used)) static void __wake_userfault(struct userfaultfd_ctx *ctx,
        struct userfaultfd_wake_range *range)
{
 spin_lock_irq(&ctx->fault_pending_wqh.lock);

 if (waitqueue_active(&ctx->fault_pending_wqh))
  __wake_up_locked_key(&ctx->fault_pending_wqh, TASK_NORMAL,
         range);
 if (waitqueue_active(&ctx->fault_wqh))
  __wake_up(&ctx->fault_wqh, TASK_NORMAL, 1, range);
 spin_unlock_irq(&ctx->fault_pending_wqh.lock);
}
