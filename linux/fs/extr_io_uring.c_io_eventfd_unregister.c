
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct io_ring_ctx {int * cq_ev_fd; } ;


 int ENXIO ;
 int eventfd_ctx_put (int *) ;

__attribute__((used)) static int io_eventfd_unregister(struct io_ring_ctx *ctx)
{
 if (ctx->cq_ev_fd) {
  eventfd_ctx_put(ctx->cq_ev_fd);
  ctx->cq_ev_fd = ((void*)0);
  return 0;
 }

 return -ENXIO;
}
