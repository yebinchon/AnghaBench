
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kmem_cache_node {int list_lock; } ;
struct kmem_cache {int dummy; } ;
struct array_cache {scalar_t__ touched; int avail; } ;


 int LIST_HEAD (int ) ;
 int check_mutex_acquired () ;
 int drain_array_locked (struct kmem_cache*,struct array_cache*,int,int,int *) ;
 int list ;
 int slabs_destroy (struct kmem_cache*,int *) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static void drain_array(struct kmem_cache *cachep, struct kmem_cache_node *n,
    struct array_cache *ac, int node)
{
 LIST_HEAD(list);


 check_mutex_acquired();

 if (!ac || !ac->avail)
  return;

 if (ac->touched) {
  ac->touched = 0;
  return;
 }

 spin_lock_irq(&n->list_lock);
 drain_array_locked(cachep, ac, node, 0, &list);
 spin_unlock_irq(&n->list_lock);

 slabs_destroy(cachep, &list);
}
