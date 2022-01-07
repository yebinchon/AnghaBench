
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xdp_redirect_ctx {int dummy; } ;


 int xdp_redirect_collect_stat (struct xdp_redirect_ctx*) ;

int trace_xdp_redirect_err(struct xdp_redirect_ctx *ctx)
{
 return xdp_redirect_collect_stat(ctx);
}
