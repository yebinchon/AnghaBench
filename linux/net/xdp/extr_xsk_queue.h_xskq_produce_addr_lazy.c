
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct xsk_queue {size_t ring_mask; int prod_head; scalar_t__ ring; } ;
struct xdp_umem_ring {int * desc; } ;


 int ENOSPC ;
 int LAZY_UPDATE_THRESHOLD ;
 scalar_t__ xskq_nb_free (struct xsk_queue*,int ,int ) ;

__attribute__((used)) static inline int xskq_produce_addr_lazy(struct xsk_queue *q, u64 addr)
{
 struct xdp_umem_ring *ring = (struct xdp_umem_ring *)q->ring;

 if (xskq_nb_free(q, q->prod_head, LAZY_UPDATE_THRESHOLD) == 0)
  return -ENOSPC;


 ring->desc[q->prod_head++ & q->ring_mask] = addr;
 return 0;
}
