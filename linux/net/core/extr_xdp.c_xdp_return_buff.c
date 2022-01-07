
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xdp_buff {int handle; TYPE_1__* rxq; int data; } ;
struct TYPE_2__ {int mem; } ;


 int __xdp_return (int ,int *,int,int ) ;

void xdp_return_buff(struct xdp_buff *xdp)
{
 __xdp_return(xdp->data, &xdp->rxq->mem, 1, xdp->handle);
}
