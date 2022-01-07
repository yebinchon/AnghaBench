
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sqe_submit {struct io_uring_sqe* sqe; } ;
struct io_uring_sqe {int dummy; } ;
struct io_ring_ctx {int dummy; } ;
struct io_kiocb {int flags; int user_data; int work; int submit; } ;
struct async_list {int cnt; } ;


 int EAGAIN ;
 int GFP_KERNEL ;
 int INIT_WORK (int *,int ) ;
 int REQ_F_FAIL_LINK ;
 int REQ_F_LINK ;
 int REQ_F_MUST_PUNT ;
 int REQ_F_NOWAIT ;
 int __io_submit_sqe (struct io_ring_ctx*,struct io_kiocb*,struct sqe_submit*,int) ;
 int atomic_inc (int *) ;
 int io_add_to_prev_work (struct async_list*,struct io_kiocb*) ;
 struct async_list* io_async_list_from_sqe (struct io_ring_ctx*,struct io_uring_sqe*) ;
 int io_cqring_add_event (struct io_ring_ctx*,int ,int) ;
 int io_put_req (struct io_kiocb*) ;
 int io_queue_async_work (struct io_ring_ctx*,struct io_kiocb*) ;
 int io_sq_wq_submit_work ;
 struct io_uring_sqe* kmemdup (struct io_uring_sqe*,int,int ) ;
 int memcpy (int *,struct sqe_submit*,int) ;

__attribute__((used)) static int __io_queue_sqe(struct io_ring_ctx *ctx, struct io_kiocb *req,
   struct sqe_submit *s)
{
 int ret;

 ret = __io_submit_sqe(ctx, req, s, 1);





 if (ret == -EAGAIN && (!(req->flags & REQ_F_NOWAIT) ||
     (req->flags & REQ_F_MUST_PUNT))) {
  struct io_uring_sqe *sqe_copy;

  sqe_copy = kmemdup(s->sqe, sizeof(*sqe_copy), GFP_KERNEL);
  if (sqe_copy) {
   struct async_list *list;

   s->sqe = sqe_copy;
   memcpy(&req->submit, s, sizeof(*s));
   list = io_async_list_from_sqe(ctx, s->sqe);
   if (!io_add_to_prev_work(list, req)) {
    if (list)
     atomic_inc(&list->cnt);
    INIT_WORK(&req->work, io_sq_wq_submit_work);
    io_queue_async_work(ctx, req);
   }





   return 0;
  }
 }


 io_put_req(req);


 if (ret) {
  io_cqring_add_event(ctx, req->user_data, ret);
  if (req->flags & REQ_F_LINK)
   req->flags |= REQ_F_FAIL_LINK;
  io_put_req(req);
 }

 return ret;
}
