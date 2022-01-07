
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xsk_queue {int chunk_mask; int invalid_descs; } ;
struct xdp_umem {int flags; int chunk_size_nohr; } ;
struct xdp_desc {int addr; int len; scalar_t__ options; } ;


 int XDP_UMEM_UNALIGNED_CHUNK_FLAG ;
 int xskq_is_valid_addr (struct xsk_queue*,int) ;
 int xskq_is_valid_addr_unaligned (struct xsk_queue*,int,int,struct xdp_umem*) ;

__attribute__((used)) static inline bool xskq_is_valid_desc(struct xsk_queue *q, struct xdp_desc *d,
          struct xdp_umem *umem)
{
 if (umem->flags & XDP_UMEM_UNALIGNED_CHUNK_FLAG) {
  if (!xskq_is_valid_addr_unaligned(q, d->addr, d->len, umem))
   return 0;

  if (d->len > umem->chunk_size_nohr || d->options) {
   q->invalid_descs++;
   return 0;
  }

  return 1;
 }

 if (!xskq_is_valid_addr(q, d->addr))
  return 0;

 if (((d->addr + d->len) & q->chunk_mask) != (d->addr & q->chunk_mask) ||
     d->options) {
  q->invalid_descs++;
  return 0;
 }

 return 1;
}
