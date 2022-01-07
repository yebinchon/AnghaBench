
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kmem_cache {int flags; } ;


 int SLAB_DEBUG_FLAGS ;
 int unlikely (int) ;

__attribute__((used)) static inline int kmem_cache_debug(struct kmem_cache *s)
{



 return 0;

}
