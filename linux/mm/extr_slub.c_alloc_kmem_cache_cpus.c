
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kmem_cache_cpu {int dummy; } ;
struct kmem_cache {int cpu_slab; } ;


 int BUILD_BUG_ON (int) ;
 int KMALLOC_SHIFT_HIGH ;
 int PERCPU_DYNAMIC_EARLY_SIZE ;
 int __alloc_percpu (int,int) ;
 int init_kmem_cache_cpus (struct kmem_cache*) ;

__attribute__((used)) static inline int alloc_kmem_cache_cpus(struct kmem_cache *s)
{
 BUILD_BUG_ON(PERCPU_DYNAMIC_EARLY_SIZE <
   KMALLOC_SHIFT_HIGH * sizeof(struct kmem_cache_cpu));





 s->cpu_slab = __alloc_percpu(sizeof(struct kmem_cache_cpu),
         2 * sizeof(void *));

 if (!s->cpu_slab)
  return 0;

 init_kmem_cache_cpus(s);

 return 1;
}
