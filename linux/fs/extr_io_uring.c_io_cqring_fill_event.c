
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef long u64 ;
struct io_uring_cqe {int flags; int res; int user_data; } ;
struct io_ring_ctx {int cached_cq_overflow; TYPE_1__* rings; } ;
struct TYPE_2__ {int cq_overflow; } ;


 int WRITE_ONCE (int ,long) ;
 long atomic_inc_return (int *) ;
 struct io_uring_cqe* io_get_cqring (struct io_ring_ctx*) ;

__attribute__((used)) static void io_cqring_fill_event(struct io_ring_ctx *ctx, u64 ki_user_data,
     long res)
{
 struct io_uring_cqe *cqe;






 cqe = io_get_cqring(ctx);
 if (cqe) {
  WRITE_ONCE(cqe->user_data, ki_user_data);
  WRITE_ONCE(cqe->res, res);
  WRITE_ONCE(cqe->flags, 0);
 } else {
  WRITE_ONCE(ctx->rings->cq_overflow,
    atomic_inc_return(&ctx->cached_cq_overflow));
 }
}
