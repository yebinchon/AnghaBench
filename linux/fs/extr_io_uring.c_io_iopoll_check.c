
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct io_ring_ctx {int uring_lock; } ;


 int __io_iopoll_check (struct io_ring_ctx*,unsigned int*,long) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int io_iopoll_check(struct io_ring_ctx *ctx, unsigned *nr_events,
      long min)
{
 int ret;






 mutex_lock(&ctx->uring_lock);
 ret = __io_iopoll_check(ctx, nr_events, min);
 mutex_unlock(&ctx->uring_lock);
 return ret;
}
