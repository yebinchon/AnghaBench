
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xsk_ring_prod {size_t cached_prod; } ;
typedef size_t __u32 ;


 size_t xsk_prod_nb_free (struct xsk_ring_prod*,size_t) ;

__attribute__((used)) static inline size_t xsk_ring_prod__reserve(struct xsk_ring_prod *prod,
         size_t nb, __u32 *idx)
{
 if (xsk_prod_nb_free(prod, nb) < nb)
  return 0;

 *idx = prod->cached_prod;
 prod->cached_prod += nb;

 return nb;
}
