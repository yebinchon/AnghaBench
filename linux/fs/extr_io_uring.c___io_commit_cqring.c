
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int tail; } ;
struct io_rings {TYPE_1__ cq; } ;
struct io_ring_ctx {scalar_t__ cached_cq_tail; int cq_fasync; int cq_wait; struct io_rings* rings; } ;


 int POLL_IN ;
 scalar_t__ READ_ONCE (int ) ;
 int SIGIO ;
 int kill_fasync (int *,int ,int ) ;
 int smp_store_release (int *,scalar_t__) ;
 int wake_up_interruptible (int *) ;
 scalar_t__ wq_has_sleeper (int *) ;

__attribute__((used)) static void __io_commit_cqring(struct io_ring_ctx *ctx)
{
 struct io_rings *rings = ctx->rings;

 if (ctx->cached_cq_tail != READ_ONCE(rings->cq.tail)) {

  smp_store_release(&rings->cq.tail, ctx->cached_cq_tail);

  if (wq_has_sleeper(&ctx->cq_wait)) {
   wake_up_interruptible(&ctx->cq_wait);
   kill_fasync(&ctx->cq_fasync, SIGIO, POLL_IN);
  }
 }
}
