
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kmem_cache {int cpu_cache; } ;
struct array_cache {int dummy; } ;


 struct array_cache* this_cpu_ptr (int ) ;

__attribute__((used)) static inline struct array_cache *cpu_cache_get(struct kmem_cache *cachep)
{
 return this_cpu_ptr(cachep->cpu_cache);
}
