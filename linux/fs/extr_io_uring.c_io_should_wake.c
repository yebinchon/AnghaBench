
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct io_wait_queue {scalar_t__ to_wait; scalar_t__ nr_timeouts; struct io_ring_ctx* ctx; } ;
struct io_ring_ctx {int cq_timeouts; int rings; } ;


 scalar_t__ atomic_read (int *) ;
 scalar_t__ io_cqring_events (int ) ;

__attribute__((used)) static inline bool io_should_wake(struct io_wait_queue *iowq)
{
 struct io_ring_ctx *ctx = iowq->ctx;






 return io_cqring_events(ctx->rings) >= iowq->to_wait ||
   atomic_read(&ctx->cq_timeouts) != iowq->nr_timeouts;
}
