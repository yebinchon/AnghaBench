
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int gfp_t ;


 void* kasan_kmalloc_large (void*,size_t,int ) ;
 int kmemleak_alloc (void*,size_t,int,int ) ;

__attribute__((used)) static inline void *kmalloc_large_node_hook(void *ptr, size_t size, gfp_t flags)
{
 ptr = kasan_kmalloc_large(ptr, size, flags);

 kmemleak_alloc(ptr, size, 1, flags);
 return ptr;
}
