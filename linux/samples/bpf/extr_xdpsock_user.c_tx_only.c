
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef unsigned int u32 ;
struct xsk_socket_info {unsigned int outstanding_tx; int tx; } ;
typedef int pkt_data ;
struct TYPE_2__ {unsigned int addr; int len; } ;


 unsigned int BATCH_SIZE ;
 unsigned int NUM_FRAMES ;
 unsigned int XSK_UMEM__DEFAULT_FRAME_SHIFT ;
 int complete_tx_only (struct xsk_socket_info*) ;
 unsigned int xsk_ring_prod__reserve (int *,unsigned int,unsigned int*) ;
 int xsk_ring_prod__submit (int *,unsigned int) ;
 TYPE_1__* xsk_ring_prod__tx_desc (int *,unsigned int) ;

__attribute__((used)) static void tx_only(struct xsk_socket_info *xsk, u32 frame_nb)
{
 u32 idx;

 if (xsk_ring_prod__reserve(&xsk->tx, BATCH_SIZE, &idx) == BATCH_SIZE) {
  unsigned int i;

  for (i = 0; i < BATCH_SIZE; i++) {
   xsk_ring_prod__tx_desc(&xsk->tx, idx + i)->addr =
    (frame_nb + i) << XSK_UMEM__DEFAULT_FRAME_SHIFT;
   xsk_ring_prod__tx_desc(&xsk->tx, idx + i)->len =
    sizeof(pkt_data) - 1;
  }

  xsk_ring_prod__submit(&xsk->tx, BATCH_SIZE);
  xsk->outstanding_tx += BATCH_SIZE;
  frame_nb += BATCH_SIZE;
  frame_nb %= NUM_FRAMES;
 }

 complete_tx_only(xsk);
}
