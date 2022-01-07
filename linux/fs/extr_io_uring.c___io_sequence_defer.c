
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct io_ring_ctx {scalar_t__ cached_cq_tail; scalar_t__ cached_sq_dropped; int cached_cq_overflow; } ;
struct io_kiocb {scalar_t__ sequence; } ;


 scalar_t__ atomic_read (int *) ;

__attribute__((used)) static inline bool __io_sequence_defer(struct io_ring_ctx *ctx,
           struct io_kiocb *req)
{
 return req->sequence != ctx->cached_cq_tail + ctx->cached_sq_dropped
     + atomic_read(&ctx->cached_cq_overflow);
}
