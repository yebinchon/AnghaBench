
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct list_lru_one {int nr_items; } ;
struct list_lru_node {int lock; int nr_items; } ;
struct list_lru {struct list_lru_node* node; } ;
struct list_head {int dummy; } ;


 int list_del_init (struct list_head*) ;
 int list_empty (struct list_head*) ;
 struct list_lru_one* list_lru_from_kmem (struct list_lru_node*,struct list_head*,int *) ;
 int page_to_nid (int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int virt_to_page (struct list_head*) ;

bool list_lru_del(struct list_lru *lru, struct list_head *item)
{
 int nid = page_to_nid(virt_to_page(item));
 struct list_lru_node *nlru = &lru->node[nid];
 struct list_lru_one *l;

 spin_lock(&nlru->lock);
 if (!list_empty(item)) {
  l = list_lru_from_kmem(nlru, item, ((void*)0));
  list_del_init(item);
  l->nr_items--;
  nlru->nr_items--;
  spin_unlock(&nlru->lock);
  return 1;
 }
 spin_unlock(&nlru->lock);
 return 0;
}
