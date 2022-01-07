
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct list_lru_node {unsigned long nr_items; } ;
struct list_lru {struct list_lru_node* node; } ;



unsigned long list_lru_count_node(struct list_lru *lru, int nid)
{
 struct list_lru_node *nlru;

 nlru = &lru->node[nid];
 return nlru->nr_items;
}
