
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kmem_cache {int dummy; } ;


 int kmem_cache_debug (struct kmem_cache*) ;

__attribute__((used)) static inline bool kmem_cache_has_cpu_partial(struct kmem_cache *s)
{



 return 0;

}
