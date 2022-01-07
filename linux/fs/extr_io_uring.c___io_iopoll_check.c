
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct io_ring_ctx {int uring_lock; int rings; } ;


 scalar_t__ io_cqring_events (int ) ;
 int io_iopoll_getevents (struct io_ring_ctx*,unsigned int*,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int need_resched () ;

__attribute__((used)) static int __io_iopoll_check(struct io_ring_ctx *ctx, unsigned *nr_events,
       long min)
{
 int iters = 0, ret = 0;

 do {
  int tmin = 0;






  if (io_cqring_events(ctx->rings))
   break;
  if (!(++iters & 7)) {
   mutex_unlock(&ctx->uring_lock);
   mutex_lock(&ctx->uring_lock);
  }

  if (*nr_events < min)
   tmin = min - *nr_events;

  ret = io_iopoll_getevents(ctx, nr_events, tmin);
  if (ret <= 0)
   break;
  ret = 0;
 } while (min && !*nr_events && !need_resched());

 return ret;
}
