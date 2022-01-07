
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xdp_frame {int mem; int data; } ;


 int __xdp_return (int ,int *,int,int ) ;

void xdp_return_frame_rx_napi(struct xdp_frame *xdpf)
{
 __xdp_return(xdpf->data, &xdpf->mem, 1, 0);
}
