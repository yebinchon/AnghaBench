
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xsk_ring_prod {scalar_t__ cached_cons; scalar_t__ cached_prod; scalar_t__* consumer; scalar_t__ size; } ;
typedef scalar_t__ __u32 ;



__attribute__((used)) static inline __u32 xsk_prod_nb_free(struct xsk_ring_prod *r, __u32 nb)
{
 __u32 free_entries = r->cached_cons - r->cached_prod;

 if (free_entries >= nb)
  return free_entries;
 r->cached_cons = *r->consumer + r->size;

 return r->cached_cons - r->cached_prod;
}
