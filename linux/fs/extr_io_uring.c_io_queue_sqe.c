
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sqe_submit {TYPE_1__* sqe; } ;
struct io_ring_ctx {int dummy; } ;
struct io_kiocb {int dummy; } ;
struct TYPE_2__ {int user_data; } ;


 int EIOCBQUEUED ;
 int __io_queue_sqe (struct io_ring_ctx*,struct io_kiocb*,struct sqe_submit*) ;
 int io_cqring_add_event (struct io_ring_ctx*,int ,int) ;
 int io_free_req (struct io_kiocb*) ;
 int io_req_defer (struct io_ring_ctx*,struct io_kiocb*,TYPE_1__*) ;

__attribute__((used)) static int io_queue_sqe(struct io_ring_ctx *ctx, struct io_kiocb *req,
   struct sqe_submit *s)
{
 int ret;

 ret = io_req_defer(ctx, req, s->sqe);
 if (ret) {
  if (ret != -EIOCBQUEUED) {
   io_free_req(req);
   io_cqring_add_event(ctx, s->sqe->user_data, ret);
  }
  return 0;
 }

 return __io_queue_sqe(ctx, req, s);
}
