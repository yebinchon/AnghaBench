
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rhash_head {int dummy; } ;
struct rhlist_head {struct rhash_head rhead; } ;
struct rhashtable_iter {scalar_t__ skip; struct rhash_head* p; struct rhashtable* ht; struct rhlist_head* list; } ;
struct rhashtable {scalar_t__ rhlist; } ;


 void* __rhashtable_walk_find_next (struct rhashtable_iter*) ;
 void* rht_obj (struct rhashtable*,struct rhash_head*) ;

void *rhashtable_walk_peek(struct rhashtable_iter *iter)
{
 struct rhlist_head *list = iter->list;
 struct rhashtable *ht = iter->ht;
 struct rhash_head *p = iter->p;

 if (p)
  return rht_obj(ht, ht->rhlist ? &list->rhead : p);



 if (iter->skip) {






  iter->skip--;
 }

 return __rhashtable_walk_find_next(iter);
}
