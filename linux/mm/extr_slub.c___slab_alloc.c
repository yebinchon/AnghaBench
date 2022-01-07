
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kmem_cache_cpu {int dummy; } ;
struct kmem_cache {int cpu_slab; } ;
typedef int gfp_t ;


 void* ___slab_alloc (struct kmem_cache*,int ,int,unsigned long,struct kmem_cache_cpu*) ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;
 struct kmem_cache_cpu* this_cpu_ptr (int ) ;

__attribute__((used)) static void *__slab_alloc(struct kmem_cache *s, gfp_t gfpflags, int node,
     unsigned long addr, struct kmem_cache_cpu *c)
{
 void *p;
 unsigned long flags;

 local_irq_save(flags);
 p = ___slab_alloc(s, gfpflags, node, addr, c);
 local_irq_restore(flags);
 return p;
}
