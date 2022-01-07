
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct xdp_sock {scalar_t__ dev; scalar_t__ queue_id; } ;
struct xdp_buff {TYPE_2__* rxq; scalar_t__ data; scalar_t__ data_end; } ;
struct TYPE_3__ {scalar_t__ type; } ;
struct TYPE_4__ {scalar_t__ dev; scalar_t__ queue_index; TYPE_1__ mem; } ;


 int EINVAL ;
 scalar_t__ MEM_TYPE_ZERO_COPY ;
 int __xsk_rcv (struct xdp_sock*,struct xdp_buff*,scalar_t__) ;
 int __xsk_rcv_zc (struct xdp_sock*,struct xdp_buff*,scalar_t__) ;
 int xsk_is_bound (struct xdp_sock*) ;

int xsk_rcv(struct xdp_sock *xs, struct xdp_buff *xdp)
{
 u32 len;

 if (!xsk_is_bound(xs))
  return -EINVAL;

 if (xs->dev != xdp->rxq->dev || xs->queue_id != xdp->rxq->queue_index)
  return -EINVAL;

 len = xdp->data_end - xdp->data;

 return (xdp->rxq->mem.type == MEM_TYPE_ZERO_COPY) ?
  __xsk_rcv_zc(xs, xdp, len) : __xsk_rcv(xs, xdp, len);
}
