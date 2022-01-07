
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct io_ring_ctx {int * sqo_thread; int sqo_thread_started; } ;


 int kthread_park (int *) ;
 int kthread_stop (int *) ;
 int wait_for_completion (int *) ;

__attribute__((used)) static void io_sq_thread_stop(struct io_ring_ctx *ctx)
{
 if (ctx->sqo_thread) {
  wait_for_completion(&ctx->sqo_thread_started);





  kthread_park(ctx->sqo_thread);
  kthread_stop(ctx->sqo_thread);
  ctx->sqo_thread = ((void*)0);
 }
}
