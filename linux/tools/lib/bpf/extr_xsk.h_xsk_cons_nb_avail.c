
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xsk_ring_cons {scalar_t__ cached_prod; scalar_t__ cached_cons; scalar_t__* producer; } ;
typedef scalar_t__ __u32 ;



__attribute__((used)) static inline __u32 xsk_cons_nb_avail(struct xsk_ring_cons *r, __u32 nb)
{
 __u32 entries = r->cached_prod - r->cached_cons;

 if (entries == 0) {
  r->cached_prod = *r->producer;
  entries = r->cached_prod - r->cached_cons;
 }

 return (entries > nb) ? nb : entries;
}
