
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct io_uring_sqe {scalar_t__ buf_index; scalar_t__ ioprio; scalar_t__ addr; } ;
struct io_ring_ctx {int flags; } ;
struct io_kiocb {int file; struct io_ring_ctx* ctx; } ;


 int EBADF ;
 int EINVAL ;
 int IORING_SETUP_IOPOLL ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int io_prep_sfr(struct io_kiocb *req, const struct io_uring_sqe *sqe)
{
 struct io_ring_ctx *ctx = req->ctx;
 int ret = 0;

 if (!req->file)
  return -EBADF;

 if (unlikely(ctx->flags & IORING_SETUP_IOPOLL))
  return -EINVAL;
 if (unlikely(sqe->addr || sqe->ioprio || sqe->buf_index))
  return -EINVAL;

 return ret;
}
