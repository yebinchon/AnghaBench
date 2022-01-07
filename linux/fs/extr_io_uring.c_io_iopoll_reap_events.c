
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct io_ring_ctx {int flags; int uring_lock; int poll_list; } ;


 int IORING_SETUP_IOPOLL ;
 int cond_resched () ;
 int io_iopoll_getevents (struct io_ring_ctx*,unsigned int*,int) ;
 int list_empty (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static void io_iopoll_reap_events(struct io_ring_ctx *ctx)
{
 if (!(ctx->flags & IORING_SETUP_IOPOLL))
  return;

 mutex_lock(&ctx->uring_lock);
 while (!list_empty(&ctx->poll_list)) {
  unsigned int nr_events = 0;

  io_iopoll_getevents(ctx, &nr_events, 1);





  cond_resched();
 }
 mutex_unlock(&ctx->uring_lock);
}
