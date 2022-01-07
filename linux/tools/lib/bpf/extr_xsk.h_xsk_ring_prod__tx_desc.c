
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xsk_ring_prod {size_t mask; scalar_t__ ring; } ;
struct xdp_desc {int dummy; } ;
typedef size_t __u32 ;



__attribute__((used)) static inline struct xdp_desc *xsk_ring_prod__tx_desc(struct xsk_ring_prod *tx,
            __u32 idx)
{
 struct xdp_desc *descs = (struct xdp_desc *)tx->ring;

 return &descs[idx & tx->mask];
}
