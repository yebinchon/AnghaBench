
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xfs_km_flags_t ;


 int KM_ZERO ;
 void* kmem_alloc_large (size_t,int) ;

__attribute__((used)) static inline void *
kmem_zalloc_large(size_t size, xfs_km_flags_t flags)
{
 return kmem_alloc_large(size, flags | KM_ZERO);
}
