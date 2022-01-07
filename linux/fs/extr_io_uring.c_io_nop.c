
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct io_ring_ctx {int flags; } ;
struct io_kiocb {struct io_ring_ctx* ctx; } ;


 int EINVAL ;
 int IORING_SETUP_IOPOLL ;
 int io_cqring_add_event (struct io_ring_ctx*,int ,long) ;
 int io_put_req (struct io_kiocb*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int io_nop(struct io_kiocb *req, u64 user_data)
{
 struct io_ring_ctx *ctx = req->ctx;
 long err = 0;

 if (unlikely(ctx->flags & IORING_SETUP_IOPOLL))
  return -EINVAL;

 io_cqring_add_event(ctx, user_data, err);
 io_put_req(req);
 return 0;
}
