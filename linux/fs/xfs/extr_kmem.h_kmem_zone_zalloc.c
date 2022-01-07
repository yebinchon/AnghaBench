
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xfs_km_flags_t ;
typedef int kmem_zone_t ;


 int KM_ZERO ;
 void* kmem_zone_alloc (int *,int) ;

__attribute__((used)) static inline void *
kmem_zone_zalloc(kmem_zone_t *zone, xfs_km_flags_t flags)
{
 return kmem_zone_alloc(zone, flags | KM_ZERO);
}
