
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
typedef int u32 ;
struct xsk_queue {unsigned int ring_mask; int prod_head; scalar_t__ ring; } ;
struct xdp_rxtx_ring {TYPE_1__* desc; } ;
struct TYPE_2__ {int len; int addr; } ;


 int ENOSPC ;
 scalar_t__ xskq_nb_free (struct xsk_queue*,int ,int) ;

__attribute__((used)) static inline int xskq_produce_batch_desc(struct xsk_queue *q,
       u64 addr, u32 len)
{
 struct xdp_rxtx_ring *ring = (struct xdp_rxtx_ring *)q->ring;
 unsigned int idx;

 if (xskq_nb_free(q, q->prod_head, 1) == 0)
  return -ENOSPC;


 idx = (q->prod_head++) & q->ring_mask;
 ring->desc[idx].addr = addr;
 ring->desc[idx].len = len;

 return 0;
}
