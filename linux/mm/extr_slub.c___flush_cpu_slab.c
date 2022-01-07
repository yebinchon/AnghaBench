
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kmem_cache_cpu {scalar_t__ page; } ;
struct kmem_cache {int cpu_slab; } ;


 int flush_slab (struct kmem_cache*,struct kmem_cache_cpu*) ;
 struct kmem_cache_cpu* per_cpu_ptr (int ,int) ;
 int unfreeze_partials (struct kmem_cache*,struct kmem_cache_cpu*) ;

__attribute__((used)) static inline void __flush_cpu_slab(struct kmem_cache *s, int cpu)
{
 struct kmem_cache_cpu *c = per_cpu_ptr(s->cpu_slab, cpu);

 if (c->page)
  flush_slab(s, c);

 unfreeze_partials(s, c);
}
