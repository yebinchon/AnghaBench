
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xdp_md {int dummy; } ;


 int XDP_PASS ;

int xdp_redirect_dummy_prog(struct xdp_md *ctx)
{
 return XDP_PASS;
}
