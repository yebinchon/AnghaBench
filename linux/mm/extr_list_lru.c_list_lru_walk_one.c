
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mem_cgroup {int dummy; } ;
struct list_lru_node {int lock; } ;
struct list_lru {struct list_lru_node* node; } ;
typedef int list_lru_walk_cb ;


 unsigned long __list_lru_walk_one (struct list_lru_node*,int ,int ,void*,unsigned long*) ;
 int memcg_cache_id (struct mem_cgroup*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

unsigned long
list_lru_walk_one(struct list_lru *lru, int nid, struct mem_cgroup *memcg,
    list_lru_walk_cb isolate, void *cb_arg,
    unsigned long *nr_to_walk)
{
 struct list_lru_node *nlru = &lru->node[nid];
 unsigned long ret;

 spin_lock(&nlru->lock);
 ret = __list_lru_walk_one(nlru, memcg_cache_id(memcg), isolate, cb_arg,
      nr_to_walk);
 spin_unlock(&nlru->lock);
 return ret;
}
