
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mem_cgroup {int dummy; } ;
struct list_lru_one {unsigned long nr_items; } ;
struct list_lru_node {int dummy; } ;
struct list_lru {struct list_lru_node* node; } ;


 struct list_lru_one* list_lru_from_memcg_idx (struct list_lru_node*,int ) ;
 int memcg_cache_id (struct mem_cgroup*) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;

unsigned long list_lru_count_one(struct list_lru *lru,
     int nid, struct mem_cgroup *memcg)
{
 struct list_lru_node *nlru = &lru->node[nid];
 struct list_lru_one *l;
 unsigned long count;

 rcu_read_lock();
 l = list_lru_from_memcg_idx(nlru, memcg_cache_id(memcg));
 count = l->nr_items;
 rcu_read_unlock();

 return count;
}
