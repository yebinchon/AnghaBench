
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct io_uring_cqe {int dummy; } ;
struct TYPE_2__ {int head; } ;
struct io_rings {unsigned int cq_ring_entries; struct io_uring_cqe* cqes; TYPE_1__ cq; } ;
struct io_ring_ctx {unsigned int cached_cq_tail; unsigned int cq_mask; struct io_rings* rings; } ;


 unsigned int READ_ONCE (int ) ;

__attribute__((used)) static struct io_uring_cqe *io_get_cqring(struct io_ring_ctx *ctx)
{
 struct io_rings *rings = ctx->rings;
 unsigned tail;

 tail = ctx->cached_cq_tail;





 if (tail - READ_ONCE(rings->cq.head) == rings->cq_ring_entries)
  return ((void*)0);

 ctx->cached_cq_tail++;
 return &rings->cqes[tail & ctx->cq_mask];
}
