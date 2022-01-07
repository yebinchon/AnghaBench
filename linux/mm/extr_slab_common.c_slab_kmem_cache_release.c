
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kmem_cache {int name; } ;


 int __kmem_cache_release (struct kmem_cache*) ;
 int destroy_memcg_params (struct kmem_cache*) ;
 int kfree_const (int ) ;
 int kmem_cache ;
 int kmem_cache_free (int ,struct kmem_cache*) ;

void slab_kmem_cache_release(struct kmem_cache *s)
{
 __kmem_cache_release(s);
 destroy_memcg_params(s);
 kfree_const(s->name);
 kmem_cache_free(kmem_cache, s);
}
