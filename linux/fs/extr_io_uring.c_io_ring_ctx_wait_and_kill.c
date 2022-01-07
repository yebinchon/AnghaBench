
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct io_ring_ctx {int ctx_done; int uring_lock; int refs; } ;


 int io_iopoll_reap_events (struct io_ring_ctx*) ;
 int io_kill_timeouts (struct io_ring_ctx*) ;
 int io_poll_remove_all (struct io_ring_ctx*) ;
 int io_ring_ctx_free (struct io_ring_ctx*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int percpu_ref_kill (int *) ;
 int wait_for_completion (int *) ;

__attribute__((used)) static void io_ring_ctx_wait_and_kill(struct io_ring_ctx *ctx)
{
 mutex_lock(&ctx->uring_lock);
 percpu_ref_kill(&ctx->refs);
 mutex_unlock(&ctx->uring_lock);

 io_kill_timeouts(ctx);
 io_poll_remove_all(ctx);
 io_iopoll_reap_events(ctx);
 wait_for_completion(&ctx->ctx_done);
 io_ring_ctx_free(ctx);
}
