
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kmem_cache_node {int list_lock; struct alien_cache** alien; struct array_cache* shared; } ;
struct kmem_cache {int shared; int batchcount; int limit; } ;
struct array_cache {scalar_t__ avail; int entry; } ;
struct alien_cache {int dummy; } ;
typedef int gfp_t ;


 int ENOMEM ;
 int LIST_HEAD (int ) ;
 struct alien_cache** alloc_alien_cache (int,int ,int ) ;
 struct array_cache* alloc_arraycache (int,int,int,int ) ;
 int free_alien_cache (struct alien_cache**) ;
 int free_block (struct kmem_cache*,int ,scalar_t__,int,int *) ;
 struct kmem_cache_node* get_node (struct kmem_cache*,int) ;
 int init_cache_node (struct kmem_cache*,int,int ) ;
 int kfree (struct array_cache*) ;
 int list ;
 int slabs_destroy (struct kmem_cache*,int *) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 int synchronize_rcu () ;
 scalar_t__ use_alien_caches ;

__attribute__((used)) static int setup_kmem_cache_node(struct kmem_cache *cachep,
    int node, gfp_t gfp, bool force_change)
{
 int ret = -ENOMEM;
 struct kmem_cache_node *n;
 struct array_cache *old_shared = ((void*)0);
 struct array_cache *new_shared = ((void*)0);
 struct alien_cache **new_alien = ((void*)0);
 LIST_HEAD(list);

 if (use_alien_caches) {
  new_alien = alloc_alien_cache(node, cachep->limit, gfp);
  if (!new_alien)
   goto fail;
 }

 if (cachep->shared) {
  new_shared = alloc_arraycache(node,
   cachep->shared * cachep->batchcount, 0xbaadf00d, gfp);
  if (!new_shared)
   goto fail;
 }

 ret = init_cache_node(cachep, node, gfp);
 if (ret)
  goto fail;

 n = get_node(cachep, node);
 spin_lock_irq(&n->list_lock);
 if (n->shared && force_change) {
  free_block(cachep, n->shared->entry,
    n->shared->avail, node, &list);
  n->shared->avail = 0;
 }

 if (!n->shared || force_change) {
  old_shared = n->shared;
  n->shared = new_shared;
  new_shared = ((void*)0);
 }

 if (!n->alien) {
  n->alien = new_alien;
  new_alien = ((void*)0);
 }

 spin_unlock_irq(&n->list_lock);
 slabs_destroy(cachep, &list);







 if (old_shared && force_change)
  synchronize_rcu();

fail:
 kfree(old_shared);
 kfree(new_shared);
 free_alien_cache(new_alien);

 return ret;
}
