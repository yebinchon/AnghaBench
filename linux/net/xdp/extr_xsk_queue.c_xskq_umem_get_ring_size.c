
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
struct xsk_queue {int nentries; } ;
struct xdp_umem_ring {int dummy; } ;



__attribute__((used)) static u32 xskq_umem_get_ring_size(struct xsk_queue *q)
{
 return sizeof(struct xdp_umem_ring) + q->nentries * sizeof(u64);
}
