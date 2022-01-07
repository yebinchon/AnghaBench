
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct io_ring_ctx {int completion_lock; } ;


 int io_commit_cqring (struct io_ring_ctx*) ;
 int io_cqring_ev_posted (struct io_ring_ctx*) ;
 int io_cqring_fill_event (struct io_ring_ctx*,int ,long) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void io_cqring_add_event(struct io_ring_ctx *ctx, u64 user_data,
    long res)
{
 unsigned long flags;

 spin_lock_irqsave(&ctx->completion_lock, flags);
 io_cqring_fill_event(ctx, user_data, res);
 io_commit_cqring(ctx);
 spin_unlock_irqrestore(&ctx->completion_lock, flags);

 io_cqring_ev_posted(ctx);
}
