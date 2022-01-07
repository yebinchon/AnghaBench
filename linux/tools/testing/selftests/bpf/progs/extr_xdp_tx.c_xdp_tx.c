
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xdp_md {int dummy; } ;


 int XDP_TX ;

int xdp_tx(struct xdp_md *xdp)
{
 return XDP_TX;
}
