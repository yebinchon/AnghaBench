
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mem_cgroup {int dummy; } ;
struct list_lru_one {int dummy; } ;
struct list_lru_node {struct list_lru_one lru; } ;



__attribute__((used)) static inline struct list_lru_one *
list_lru_from_kmem(struct list_lru_node *nlru, void *ptr,
     struct mem_cgroup **memcg_ptr)
{
 if (memcg_ptr)
  *memcg_ptr = ((void*)0);
 return &nlru->lru;
}
