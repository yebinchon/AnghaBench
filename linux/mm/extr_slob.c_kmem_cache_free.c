
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct slob_rcu {int size; int head; } ;
struct kmem_cache {int flags; int size; } ;


 int SLAB_TYPESAFE_BY_RCU ;
 int _RET_IP_ ;
 int __kmem_cache_free (void*,int) ;
 int call_rcu (int *,int ) ;
 int kmem_rcu_free ;
 int kmemleak_free_recursive (void*,int) ;
 int trace_kmem_cache_free (int ,void*) ;
 scalar_t__ unlikely (int) ;

void kmem_cache_free(struct kmem_cache *c, void *b)
{
 kmemleak_free_recursive(b, c->flags);
 if (unlikely(c->flags & SLAB_TYPESAFE_BY_RCU)) {
  struct slob_rcu *slob_rcu;
  slob_rcu = b + (c->size - sizeof(struct slob_rcu));
  slob_rcu->size = c->size;
  call_rcu(&slob_rcu->head, kmem_rcu_free);
 } else {
  __kmem_cache_free(b, c->size);
 }

 trace_kmem_cache_free(_RET_IP_, b);
}
