
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xfs_km_flags_t ;


 int KM_MAYFAIL ;
 int _RET_IP_ ;
 void* __kmem_vmalloc (size_t,int) ;
 void* kmem_alloc (size_t,int) ;
 int trace_kmem_alloc_large (size_t,int,int ) ;

void *
kmem_alloc_large(size_t size, xfs_km_flags_t flags)
{
 void *ptr;

 trace_kmem_alloc_large(size, flags, _RET_IP_);

 ptr = kmem_alloc(size, flags | KM_MAYFAIL);
 if (ptr)
  return ptr;
 return __kmem_vmalloc(size, flags);
}
