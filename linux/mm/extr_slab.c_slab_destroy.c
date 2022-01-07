
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int rcu_head; void* freelist; } ;
struct kmem_cache {int flags; int freelist_cache; } ;


 scalar_t__ OFF_SLAB (struct kmem_cache*) ;
 int SLAB_TYPESAFE_BY_RCU ;
 int call_rcu (int *,int ) ;
 int kmem_cache_free (int ,void*) ;
 int kmem_freepages (struct kmem_cache*,struct page*) ;
 int kmem_rcu_free ;
 int slab_destroy_debugcheck (struct kmem_cache*,struct page*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static void slab_destroy(struct kmem_cache *cachep, struct page *page)
{
 void *freelist;

 freelist = page->freelist;
 slab_destroy_debugcheck(cachep, page);
 if (unlikely(cachep->flags & SLAB_TYPESAFE_BY_RCU))
  call_rcu(&page->rcu_head, kmem_rcu_free);
 else
  kmem_freepages(cachep, page);





 if (OFF_SLAB(cachep))
  kmem_cache_free(cachep->freelist_cache, freelist);
}
