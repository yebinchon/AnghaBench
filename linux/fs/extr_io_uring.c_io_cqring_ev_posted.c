
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct io_ring_ctx {scalar_t__ cq_ev_fd; int sqo_wait; int wait; } ;


 int eventfd_signal (scalar_t__,int) ;
 scalar_t__ waitqueue_active (int *) ;
 int wake_up (int *) ;

__attribute__((used)) static void io_cqring_ev_posted(struct io_ring_ctx *ctx)
{
 if (waitqueue_active(&ctx->wait))
  wake_up(&ctx->wait);
 if (waitqueue_active(&ctx->sqo_wait))
  wake_up(&ctx->sqo_wait);
 if (ctx->cq_ev_fd)
  eventfd_signal(ctx->cq_ev_fd, 1);
}
