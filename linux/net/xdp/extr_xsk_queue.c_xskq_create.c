
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* u32 ;
struct xsk_queue {struct xdp_ring* ring; void* ring_mask; void* nentries; } ;
struct xdp_ring {int dummy; } ;
typedef int gfp_t ;


 int GFP_KERNEL ;
 int __GFP_COMP ;
 int __GFP_NORETRY ;
 int __GFP_NOWARN ;
 int __GFP_ZERO ;
 scalar_t__ __get_free_pages (int,int ) ;
 int get_order (size_t) ;
 int kfree (struct xsk_queue*) ;
 struct xsk_queue* kzalloc (int,int) ;
 size_t xskq_rxtx_get_ring_size (struct xsk_queue*) ;
 size_t xskq_umem_get_ring_size (struct xsk_queue*) ;

struct xsk_queue *xskq_create(u32 nentries, bool umem_queue)
{
 struct xsk_queue *q;
 gfp_t gfp_flags;
 size_t size;

 q = kzalloc(sizeof(*q), GFP_KERNEL);
 if (!q)
  return ((void*)0);

 q->nentries = nentries;
 q->ring_mask = nentries - 1;

 gfp_flags = GFP_KERNEL | __GFP_ZERO | __GFP_NOWARN |
      __GFP_COMP | __GFP_NORETRY;
 size = umem_queue ? xskq_umem_get_ring_size(q) :
        xskq_rxtx_get_ring_size(q);

 q->ring = (struct xdp_ring *)__get_free_pages(gfp_flags,
            get_order(size));
 if (!q->ring) {
  kfree(q);
  return ((void*)0);
 }

 return q;
}
