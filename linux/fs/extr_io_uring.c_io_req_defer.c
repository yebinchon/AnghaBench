
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct io_uring_sqe {int dummy; } ;
struct io_ring_ctx {int completion_lock; int defer_list; } ;
struct TYPE_2__ {struct io_uring_sqe* sqe; } ;
struct io_kiocb {int list; int work; TYPE_1__ submit; } ;


 int EAGAIN ;
 int EIOCBQUEUED ;
 int GFP_KERNEL ;
 int INIT_WORK (int *,int ) ;
 int io_sequence_defer (struct io_ring_ctx*,struct io_kiocb*) ;
 int io_sq_wq_submit_work ;
 int kfree (struct io_uring_sqe*) ;
 struct io_uring_sqe* kmalloc (int,int ) ;
 int list_add_tail (int *,int *) ;
 scalar_t__ list_empty (int *) ;
 int memcpy (struct io_uring_sqe*,struct io_uring_sqe const*,int) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static int io_req_defer(struct io_ring_ctx *ctx, struct io_kiocb *req,
   const struct io_uring_sqe *sqe)
{
 struct io_uring_sqe *sqe_copy;

 if (!io_sequence_defer(ctx, req) && list_empty(&ctx->defer_list))
  return 0;

 sqe_copy = kmalloc(sizeof(*sqe_copy), GFP_KERNEL);
 if (!sqe_copy)
  return -EAGAIN;

 spin_lock_irq(&ctx->completion_lock);
 if (!io_sequence_defer(ctx, req) && list_empty(&ctx->defer_list)) {
  spin_unlock_irq(&ctx->completion_lock);
  kfree(sqe_copy);
  return 0;
 }

 memcpy(sqe_copy, sqe, sizeof(*sqe_copy));
 req->submit.sqe = sqe_copy;

 INIT_WORK(&req->work, io_sq_wq_submit_work);
 list_add_tail(&req->list, &ctx->defer_list);
 spin_unlock_irq(&ctx->completion_lock);
 return -EIOCBQUEUED;
}
