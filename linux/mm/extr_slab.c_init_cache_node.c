
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kmem_cache_node {scalar_t__ free_limit; scalar_t__ next_reap; int list_lock; } ;
struct kmem_cache {int batchcount; struct kmem_cache_node** node; scalar_t__ num; } ;
typedef int gfp_t ;


 int ENOMEM ;
 unsigned long REAPTIMEOUT_NODE ;
 struct kmem_cache_node* get_node (struct kmem_cache*,int) ;
 scalar_t__ jiffies ;
 struct kmem_cache_node* kmalloc_node (int,int ,int) ;
 int kmem_cache_node_init (struct kmem_cache_node*) ;
 int nr_cpus_node (int) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static int init_cache_node(struct kmem_cache *cachep, int node, gfp_t gfp)
{
 struct kmem_cache_node *n;






 n = get_node(cachep, node);
 if (n) {
  spin_lock_irq(&n->list_lock);
  n->free_limit = (1 + nr_cpus_node(node)) * cachep->batchcount +
    cachep->num;
  spin_unlock_irq(&n->list_lock);

  return 0;
 }

 n = kmalloc_node(sizeof(struct kmem_cache_node), gfp, node);
 if (!n)
  return -ENOMEM;

 kmem_cache_node_init(n);
 n->next_reap = jiffies + REAPTIMEOUT_NODE +
      ((unsigned long)cachep) % REAPTIMEOUT_NODE;

 n->free_limit =
  (1 + nr_cpus_node(node)) * cachep->batchcount + cachep->num;






 cachep->node[node] = n;

 return 0;
}
