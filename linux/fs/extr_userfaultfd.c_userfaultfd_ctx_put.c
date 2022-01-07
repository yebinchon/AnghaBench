
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int lock; } ;
struct userfaultfd_ctx {int mm; TYPE_1__ fd_wqh; TYPE_1__ event_wqh; TYPE_1__ fault_wqh; TYPE_1__ fault_pending_wqh; int refcount; } ;


 int VM_BUG_ON (int ) ;
 int kmem_cache_free (int ,struct userfaultfd_ctx*) ;
 int mmdrop (int ) ;
 scalar_t__ refcount_dec_and_test (int *) ;
 int spin_is_locked (int *) ;
 int userfaultfd_ctx_cachep ;
 int waitqueue_active (TYPE_1__*) ;

__attribute__((used)) static void userfaultfd_ctx_put(struct userfaultfd_ctx *ctx)
{
 if (refcount_dec_and_test(&ctx->refcount)) {
  VM_BUG_ON(spin_is_locked(&ctx->fault_pending_wqh.lock));
  VM_BUG_ON(waitqueue_active(&ctx->fault_pending_wqh));
  VM_BUG_ON(spin_is_locked(&ctx->fault_wqh.lock));
  VM_BUG_ON(waitqueue_active(&ctx->fault_wqh));
  VM_BUG_ON(spin_is_locked(&ctx->event_wqh.lock));
  VM_BUG_ON(waitqueue_active(&ctx->event_wqh));
  VM_BUG_ON(spin_is_locked(&ctx->fd_wqh.lock));
  VM_BUG_ON(waitqueue_active(&ctx->fd_wqh));
  mmdrop(ctx->mm);
  kmem_cache_free(userfaultfd_ctx_cachep, ctx);
 }
}
