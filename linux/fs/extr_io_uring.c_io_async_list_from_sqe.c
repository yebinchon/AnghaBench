
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct io_uring_sqe {int opcode; } ;
struct io_ring_ctx {struct async_list* pending_async; } ;
struct async_list {int dummy; } ;






 size_t READ ;
 size_t WRITE ;

__attribute__((used)) static struct async_list *io_async_list_from_sqe(struct io_ring_ctx *ctx,
       const struct io_uring_sqe *sqe)
{
 switch (sqe->opcode) {
 case 131:
 case 130:
  return &ctx->pending_async[READ];
 case 129:
 case 128:
  return &ctx->pending_async[WRITE];
 default:
  return ((void*)0);
 }
}
