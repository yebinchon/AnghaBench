
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct xsk_socket_info {unsigned int tx_npkts; scalar_t__ outstanding_tx; TYPE_1__* umem; int tx; } ;
struct TYPE_2__ {int cq; } ;


 int BATCH_SIZE ;
 int kick_tx (struct xsk_socket_info*) ;
 int opt_need_wakeup ;
 unsigned int xsk_ring_cons__peek (int *,int ,int *) ;
 int xsk_ring_cons__release (int *,unsigned int) ;
 scalar_t__ xsk_ring_prod__needs_wakeup (int *) ;

__attribute__((used)) static inline void complete_tx_only(struct xsk_socket_info *xsk)
{
 unsigned int rcvd;
 u32 idx;

 if (!xsk->outstanding_tx)
  return;

 if (!opt_need_wakeup || xsk_ring_prod__needs_wakeup(&xsk->tx))
  kick_tx(xsk);

 rcvd = xsk_ring_cons__peek(&xsk->umem->cq, BATCH_SIZE, &idx);
 if (rcvd > 0) {
  xsk_ring_cons__release(&xsk->umem->cq, rcvd);
  xsk->outstanding_tx -= rcvd;
  xsk->tx_npkts += rcvd;
 }
}
