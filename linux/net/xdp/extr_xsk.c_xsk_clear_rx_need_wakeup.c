
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct xdp_umem {int need_wakeup; TYPE_2__* fq; } ;
struct TYPE_4__ {TYPE_1__* ring; } ;
struct TYPE_3__ {int flags; } ;


 int XDP_RING_NEED_WAKEUP ;
 int XDP_WAKEUP_RX ;

void xsk_clear_rx_need_wakeup(struct xdp_umem *umem)
{
 if (!(umem->need_wakeup & XDP_WAKEUP_RX))
  return;

 umem->fq->ring->flags &= ~XDP_RING_NEED_WAKEUP;
 umem->need_wakeup &= ~XDP_WAKEUP_RX;
}
