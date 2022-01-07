
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kioctx {int ctx_lock; } ;
struct aio_kiocb {int ki_list; struct kioctx* ki_ctx; } ;


 int list_del (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void aio_remove_iocb(struct aio_kiocb *iocb)
{
 struct kioctx *ctx = iocb->ki_ctx;
 unsigned long flags;

 spin_lock_irqsave(&ctx->ctx_lock, flags);
 list_del(&iocb->ki_list);
 spin_unlock_irqrestore(&ctx->ctx_lock, flags);
}
