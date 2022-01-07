
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xdp_md {scalar_t__ data; scalar_t__ data_end; } ;


 int XDP_DROP ;
 int XDP_TX ;
 scalar_t__ bpf_xdp_adjust_tail (struct xdp_md*,scalar_t__) ;

int _xdp_adjust_tail(struct xdp_md *xdp)
{
 void *data_end = (void *)(long)xdp->data_end;
 void *data = (void *)(long)xdp->data;
 int offset = 0;

 if (data_end - data == 54)
  offset = 256;
 else
  offset = 20;
 if (bpf_xdp_adjust_tail(xdp, 0 - offset))
  return XDP_DROP;
 return XDP_TX;
}
