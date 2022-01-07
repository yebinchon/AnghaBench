
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xsk_ring_prod {size_t mask; scalar_t__ ring; } ;
typedef int __u64 ;
typedef size_t __u32 ;



__attribute__((used)) static inline __u64 *xsk_ring_prod__fill_addr(struct xsk_ring_prod *fill,
           __u32 idx)
{
 __u64 *addrs = (__u64 *)fill->ring;

 return &addrs[idx & fill->mask];
}
