
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kmem_cache {int cpu_slab; } ;


 int cache_random_seq_destroy (struct kmem_cache*) ;
 int free_kmem_cache_nodes (struct kmem_cache*) ;
 int free_percpu (int ) ;

void __kmem_cache_release(struct kmem_cache *s)
{
 cache_random_seq_destroy(s);
 free_percpu(s->cpu_slab);
 free_kmem_cache_nodes(s);
}
