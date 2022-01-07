
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kmem_cache {int dummy; } ;


 void* freelist_ptr (struct kmem_cache const*,void*,unsigned long) ;

__attribute__((used)) static inline void *freelist_dereference(const struct kmem_cache *s,
      void *ptr_addr)
{
 return freelist_ptr(s, (void *)*(unsigned long *)(ptr_addr),
       (unsigned long)ptr_addr);
}
