
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mem_cgroup {int dummy; } ;
struct list_lru_one {int nr_items; int list; } ;
struct list_lru_node {int lock; int nr_items; } ;
struct list_lru {struct list_lru_node* node; } ;
struct list_head {int dummy; } ;


 int list_add_tail (struct list_head*,int *) ;
 scalar_t__ list_empty (struct list_head*) ;
 struct list_lru_one* list_lru_from_kmem (struct list_lru_node*,struct list_head*,struct mem_cgroup**) ;
 int lru_shrinker_id (struct list_lru*) ;
 int memcg_set_shrinker_bit (struct mem_cgroup*,int,int ) ;
 int page_to_nid (int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int virt_to_page (struct list_head*) ;

bool list_lru_add(struct list_lru *lru, struct list_head *item)
{
 int nid = page_to_nid(virt_to_page(item));
 struct list_lru_node *nlru = &lru->node[nid];
 struct mem_cgroup *memcg;
 struct list_lru_one *l;

 spin_lock(&nlru->lock);
 if (list_empty(item)) {
  l = list_lru_from_kmem(nlru, item, &memcg);
  list_add_tail(item, &l->list);

  if (!l->nr_items++)
   memcg_set_shrinker_bit(memcg, nid,
            lru_shrinker_id(lru));
  nlru->nr_items++;
  spin_unlock(&nlru->lock);
  return 1;
 }
 spin_unlock(&nlru->lock);
 return 0;
}
