
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
struct xdp_sock {int rx_dropped; int rx; } ;
struct xdp_buff {scalar_t__ handle; } ;


 int xskq_produce_batch_desc (int ,int ,int ) ;

__attribute__((used)) static int __xsk_rcv_zc(struct xdp_sock *xs, struct xdp_buff *xdp, u32 len)
{
 int err = xskq_produce_batch_desc(xs->rx, (u64)xdp->handle, len);

 if (err)
  xs->rx_dropped++;

 return err;
}
