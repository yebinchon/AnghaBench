
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xdp_md {int dummy; } ;


 int xdp_fwd_flags (struct xdp_md*,int ) ;

int xdp_fwd_prog(struct xdp_md *ctx)
{
 return xdp_fwd_flags(ctx, 0);
}
