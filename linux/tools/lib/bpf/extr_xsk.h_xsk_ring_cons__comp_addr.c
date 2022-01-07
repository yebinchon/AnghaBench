
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xsk_ring_cons {size_t mask; scalar_t__ ring; } ;
typedef int __u64 ;
typedef size_t __u32 ;



__attribute__((used)) static inline const __u64 *
xsk_ring_cons__comp_addr(const struct xsk_ring_cons *comp, __u32 idx)
{
 const __u64 *addrs = (const __u64 *)comp->ring;

 return &addrs[idx & comp->mask];
}
