
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct list_lru_one {int dummy; } ;
struct list_lru_node {struct list_lru_one lru; } ;



__attribute__((used)) static inline struct list_lru_one *
list_lru_from_memcg_idx(struct list_lru_node *nlru, int idx)
{
 return &nlru->lru;
}
