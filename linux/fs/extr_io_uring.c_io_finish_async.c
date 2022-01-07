
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct io_ring_ctx {int ** sqo_wq; } ;


 int ARRAY_SIZE (int **) ;
 int destroy_workqueue (int *) ;
 int io_sq_thread_stop (struct io_ring_ctx*) ;

__attribute__((used)) static void io_finish_async(struct io_ring_ctx *ctx)
{
 int i;

 io_sq_thread_stop(ctx);

 for (i = 0; i < ARRAY_SIZE(ctx->sqo_wq); i++) {
  if (ctx->sqo_wq[i]) {
   destroy_workqueue(ctx->sqo_wq[i]);
   ctx->sqo_wq[i] = ((void*)0);
  }
 }
}
