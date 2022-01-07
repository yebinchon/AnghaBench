
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kmem_cache {int flags; int list; } ;


 int EBUSY ;
 int SLAB_TYPESAFE_BY_RCU ;
 scalar_t__ __kmem_cache_shutdown (struct kmem_cache*) ;
 int kasan_cache_shutdown (struct kmem_cache*) ;
 int list_add_tail (int *,int *) ;
 int list_del (int *) ;
 int memcg_unlink_cache (struct kmem_cache*) ;
 int schedule_work (int *) ;
 int slab_caches_to_rcu_destroy ;
 int slab_caches_to_rcu_destroy_work ;
 int slab_kmem_cache_release (struct kmem_cache*) ;
 int sysfs_slab_release (struct kmem_cache*) ;
 int sysfs_slab_unlink (struct kmem_cache*) ;

__attribute__((used)) static int shutdown_cache(struct kmem_cache *s)
{

 kasan_cache_shutdown(s);

 if (__kmem_cache_shutdown(s) != 0)
  return -EBUSY;

 memcg_unlink_cache(s);
 list_del(&s->list);

 if (s->flags & SLAB_TYPESAFE_BY_RCU) {



  list_add_tail(&s->list, &slab_caches_to_rcu_destroy);
  schedule_work(&slab_caches_to_rcu_destroy_work);
 } else {




  slab_kmem_cache_release(s);

 }

 return 0;
}
