
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xfs_km_flags_t ;


 int KM_MAYFAIL ;
 int PAGE_SIZE ;
 scalar_t__ WARN_ON_ONCE (int) ;
 int _RET_IP_ ;
 void* __kmem_vmalloc (size_t,int) ;
 int kfree (void*) ;
 void* kmem_alloc (size_t,int) ;
 int trace_kmem_alloc_io (size_t,int,int ) ;

void *
kmem_alloc_io(size_t size, int align_mask, xfs_km_flags_t flags)
{
 void *ptr;

 trace_kmem_alloc_io(size, flags, _RET_IP_);

 if (WARN_ON_ONCE(align_mask >= PAGE_SIZE))
  align_mask = PAGE_SIZE - 1;

 ptr = kmem_alloc(size, flags | KM_MAYFAIL);
 if (ptr) {
  if (!((uintptr_t)ptr & align_mask))
   return ptr;
  kfree(ptr);
 }
 return __kmem_vmalloc(size, flags);
}
