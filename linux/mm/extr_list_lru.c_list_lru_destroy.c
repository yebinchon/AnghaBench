
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct list_lru {int shrinker_id; int * node; } ;


 int kfree (int *) ;
 int list_lru_unregister (struct list_lru*) ;
 int memcg_destroy_list_lru (struct list_lru*) ;
 int memcg_get_cache_ids () ;
 int memcg_put_cache_ids () ;

void list_lru_destroy(struct list_lru *lru)
{

 if (!lru->node)
  return;

 memcg_get_cache_ids();

 list_lru_unregister(lru);

 memcg_destroy_list_lru(lru);
 kfree(lru->node);
 lru->node = ((void*)0);




 memcg_put_cache_ids();
}
