
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct xsk_queue {size_t ring_mask; int prod_tail; TYPE_1__* ring; } ;
struct xdp_umem_ring {int * desc; } ;
struct TYPE_2__ {int producer; } ;


 int ENOSPC ;
 int WRITE_ONCE (int ,int ) ;
 int smp_wmb () ;
 scalar_t__ xskq_nb_free (struct xsk_queue*,int ,int) ;

__attribute__((used)) static inline int xskq_produce_addr(struct xsk_queue *q, u64 addr)
{
 struct xdp_umem_ring *ring = (struct xdp_umem_ring *)q->ring;

 if (xskq_nb_free(q, q->prod_tail, 1) == 0)
  return -ENOSPC;


 ring->desc[q->prod_tail++ & q->ring_mask] = addr;


 smp_wmb();

 WRITE_ONCE(q->ring->producer, q->prod_tail);
 return 0;
}
