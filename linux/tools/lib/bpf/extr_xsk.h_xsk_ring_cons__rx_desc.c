
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xsk_ring_cons {size_t mask; scalar_t__ ring; } ;
struct xdp_desc {int dummy; } ;
typedef size_t __u32 ;



__attribute__((used)) static inline const struct xdp_desc *
xsk_ring_cons__rx_desc(const struct xsk_ring_cons *rx, __u32 idx)
{
 const struct xdp_desc *descs = (const struct xdp_desc *)rx->ring;

 return &descs[idx & rx->mask];
}
