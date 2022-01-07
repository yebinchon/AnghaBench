
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u64 ;
typedef scalar_t__ u32 ;
struct xsk_socket_info {unsigned int rx_npkts; unsigned int outstanding_tx; int rx; int tx; TYPE_1__* umem; } ;
struct pollfd {int dummy; } ;
struct TYPE_6__ {scalar_t__ len; int addr; } ;
struct TYPE_5__ {scalar_t__ len; int addr; } ;
struct TYPE_4__ {int buffer; int fq; } ;


 int BATCH_SIZE ;
 int complete_tx_l2fwd (struct xsk_socket_info*,struct pollfd*) ;
 int exit_with_error (int) ;
 int hex_dump (char*,scalar_t__,int ) ;
 int kick_tx (struct xsk_socket_info*) ;
 int num_socks ;
 int opt_timeout ;
 int poll (struct pollfd*,int ,int ) ;
 int swap_mac_addresses (char*) ;
 unsigned int xsk_ring_cons__peek (int *,int ,scalar_t__*) ;
 int xsk_ring_cons__release (int *,unsigned int) ;
 TYPE_3__* xsk_ring_cons__rx_desc (int *,scalar_t__) ;
 scalar_t__ xsk_ring_prod__needs_wakeup (int *) ;
 int xsk_ring_prod__reserve (int *,unsigned int,scalar_t__*) ;
 int xsk_ring_prod__submit (int *,unsigned int) ;
 TYPE_2__* xsk_ring_prod__tx_desc (int *,scalar_t__) ;
 int xsk_umem__add_offset_to_addr (int ) ;
 char* xsk_umem__get_data (int ,int ) ;

__attribute__((used)) static void l2fwd(struct xsk_socket_info *xsk, struct pollfd *fds)
{
 unsigned int rcvd, i;
 u32 idx_rx = 0, idx_tx = 0;
 int ret;

 complete_tx_l2fwd(xsk, fds);

 rcvd = xsk_ring_cons__peek(&xsk->rx, BATCH_SIZE, &idx_rx);
 if (!rcvd) {
  if (xsk_ring_prod__needs_wakeup(&xsk->umem->fq))
   ret = poll(fds, num_socks, opt_timeout);
  return;
 }

 ret = xsk_ring_prod__reserve(&xsk->tx, rcvd, &idx_tx);
 while (ret != rcvd) {
  if (ret < 0)
   exit_with_error(-ret);
  if (xsk_ring_prod__needs_wakeup(&xsk->tx))
   kick_tx(xsk);
  ret = xsk_ring_prod__reserve(&xsk->tx, rcvd, &idx_tx);
 }

 for (i = 0; i < rcvd; i++) {
  u64 addr = xsk_ring_cons__rx_desc(&xsk->rx, idx_rx)->addr;
  u32 len = xsk_ring_cons__rx_desc(&xsk->rx, idx_rx++)->len;
  u64 orig = addr;

  addr = xsk_umem__add_offset_to_addr(addr);
  char *pkt = xsk_umem__get_data(xsk->umem->buffer, addr);

  swap_mac_addresses(pkt);

  hex_dump(pkt, len, addr);
  xsk_ring_prod__tx_desc(&xsk->tx, idx_tx)->addr = orig;
  xsk_ring_prod__tx_desc(&xsk->tx, idx_tx++)->len = len;
 }

 xsk_ring_prod__submit(&xsk->tx, rcvd);
 xsk_ring_cons__release(&xsk->rx, rcvd);

 xsk->rx_npkts += rcvd;
 xsk->outstanding_tx += rcvd;
}
