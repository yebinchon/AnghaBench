
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kmem_cache {unsigned long random; } ;


 scalar_t__ kasan_reset_tag (void*) ;

__attribute__((used)) static inline void *freelist_ptr(const struct kmem_cache *s, void *ptr,
     unsigned long ptr_addr)
{
 return ptr;

}
