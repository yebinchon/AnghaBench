
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct kmem_cache {int dummy; } ;
typedef int gfp_t ;



__attribute__((used)) static inline int memcg_charge_slab(struct page *page, gfp_t gfp, int order,
        struct kmem_cache *s)
{
 return 0;
}
