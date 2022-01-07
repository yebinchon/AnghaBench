
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct eventfd_ctx {int kref; } ;


 int eventfd_free ;
 int kref_put (int *,int ) ;

void eventfd_ctx_put(struct eventfd_ctx *ctx)
{
 kref_put(&ctx->kref, eventfd_free);
}
