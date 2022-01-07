
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct io_ring_ctx {int poll_list; } ;


 int io_do_iopoll (struct io_ring_ctx*,unsigned int*,long) ;
 int list_empty (int *) ;
 int need_resched () ;

__attribute__((used)) static int io_iopoll_getevents(struct io_ring_ctx *ctx, unsigned int *nr_events,
    long min)
{
 while (!list_empty(&ctx->poll_list) && !need_resched()) {
  int ret;

  ret = io_do_iopoll(ctx, nr_events, min);
  if (ret < 0)
   return ret;
  if (!min || *nr_events >= min)
   return 0;
 }

 return 1;
}
