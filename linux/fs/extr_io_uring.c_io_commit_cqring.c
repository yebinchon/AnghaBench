
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct io_ring_ctx {int dummy; } ;
struct io_kiocb {int flags; } ;


 int REQ_F_IO_DRAINED ;
 int REQ_F_SHADOW_DRAIN ;
 int __io_commit_cqring (struct io_ring_ctx*) ;
 int __io_free_req (struct io_kiocb*) ;
 struct io_kiocb* io_get_deferred_req (struct io_ring_ctx*) ;
 struct io_kiocb* io_get_timeout_req (struct io_ring_ctx*) ;
 int io_kill_timeout (struct io_kiocb*) ;
 int io_queue_async_work (struct io_ring_ctx*,struct io_kiocb*) ;

__attribute__((used)) static void io_commit_cqring(struct io_ring_ctx *ctx)
{
 struct io_kiocb *req;

 while ((req = io_get_timeout_req(ctx)) != ((void*)0))
  io_kill_timeout(req);

 __io_commit_cqring(ctx);

 while ((req = io_get_deferred_req(ctx)) != ((void*)0)) {
  if (req->flags & REQ_F_SHADOW_DRAIN) {

   __io_free_req(req);
   continue;
  }
  req->flags |= REQ_F_IO_DRAINED;
  io_queue_async_work(ctx, req);
 }
}
