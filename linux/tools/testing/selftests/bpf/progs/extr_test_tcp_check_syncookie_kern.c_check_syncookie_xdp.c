
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xdp_md {scalar_t__ data_end; scalar_t__ data; } ;


 int XDP_PASS ;
 int check_syncookie (struct xdp_md*,void*,void*) ;

int check_syncookie_xdp(struct xdp_md *ctx)
{
 check_syncookie(ctx, (void *)(long)ctx->data,
   (void *)(long)ctx->data_end);
 return XDP_PASS;
}
