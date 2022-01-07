
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct xsk_queue {unsigned int cons_tail; unsigned int cons_head; unsigned int ring_mask; int chunk_mask; scalar_t__ ring; } ;
struct xdp_umem_ring {int * desc; } ;
struct xdp_umem {int flags; int chunk_size_nohr; } ;


 int READ_ONCE (int ) ;
 int XDP_UMEM_UNALIGNED_CHUNK_FLAG ;
 scalar_t__ xskq_is_valid_addr (struct xsk_queue*,int) ;
 scalar_t__ xskq_is_valid_addr_unaligned (struct xsk_queue*,int,int ,struct xdp_umem*) ;

__attribute__((used)) static inline u64 *xskq_validate_addr(struct xsk_queue *q, u64 *addr,
          struct xdp_umem *umem)
{
 while (q->cons_tail != q->cons_head) {
  struct xdp_umem_ring *ring = (struct xdp_umem_ring *)q->ring;
  unsigned int idx = q->cons_tail & q->ring_mask;

  *addr = READ_ONCE(ring->desc[idx]) & q->chunk_mask;

  if (umem->flags & XDP_UMEM_UNALIGNED_CHUNK_FLAG) {
   if (xskq_is_valid_addr_unaligned(q, *addr,
        umem->chunk_size_nohr,
        umem))
    return addr;
   goto out;
  }

  if (xskq_is_valid_addr(q, *addr))
   return addr;

out:
  q->cons_tail++;
 }

 return ((void*)0);
}
