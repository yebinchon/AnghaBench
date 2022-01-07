
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sqe_submit {TYPE_1__* sqe; } ;
struct io_ring_ctx {int completion_lock; int defer_list; } ;
struct io_kiocb {int list; int flags; } ;
struct TYPE_2__ {int user_data; } ;


 int EIOCBQUEUED ;
 int REQ_F_IO_DRAIN ;
 int __io_free_req (struct io_kiocb*) ;
 int __io_queue_sqe (struct io_ring_ctx*,struct io_kiocb*,struct sqe_submit*) ;
 int io_cqring_add_event (struct io_ring_ctx*,int ,int) ;
 int io_free_req (struct io_kiocb*) ;
 int io_queue_sqe (struct io_ring_ctx*,struct io_kiocb*,struct sqe_submit*) ;
 int io_req_defer (struct io_ring_ctx*,struct io_kiocb*,TYPE_1__*) ;
 int list_add_tail (int *,int *) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static int io_queue_link_head(struct io_ring_ctx *ctx, struct io_kiocb *req,
         struct sqe_submit *s, struct io_kiocb *shadow)
{
 int ret;
 int need_submit = 0;

 if (!shadow)
  return io_queue_sqe(ctx, req, s);






 req->flags |= REQ_F_IO_DRAIN;
 ret = io_req_defer(ctx, req, s->sqe);
 if (ret) {
  if (ret != -EIOCBQUEUED) {
   io_free_req(req);
   __io_free_req(shadow);
   io_cqring_add_event(ctx, s->sqe->user_data, ret);
   return 0;
  }
 } else {




  need_submit = 1;
 }


 spin_lock_irq(&ctx->completion_lock);
 list_add_tail(&shadow->list, &ctx->defer_list);
 spin_unlock_irq(&ctx->completion_lock);

 if (need_submit)
  return __io_queue_sqe(ctx, req, s);

 return 0;
}
