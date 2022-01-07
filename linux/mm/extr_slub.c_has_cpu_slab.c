
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kmem_cache_cpu {scalar_t__ page; } ;
struct kmem_cache {int cpu_slab; } ;


 struct kmem_cache_cpu* per_cpu_ptr (int ,int) ;
 scalar_t__ slub_percpu_partial (struct kmem_cache_cpu*) ;

__attribute__((used)) static bool has_cpu_slab(int cpu, void *info)
{
 struct kmem_cache *s = info;
 struct kmem_cache_cpu *c = per_cpu_ptr(s->cpu_slab, cpu);

 return c->page || slub_percpu_partial(c);
}
