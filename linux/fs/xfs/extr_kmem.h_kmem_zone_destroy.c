
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int kmem_zone_t ;


 int kmem_cache_destroy (int *) ;

__attribute__((used)) static inline void
kmem_zone_destroy(kmem_zone_t *zone)
{
 kmem_cache_destroy(zone);
}
