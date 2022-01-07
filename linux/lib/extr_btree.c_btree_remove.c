
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct btree_head {scalar_t__ height; } ;
struct btree_geo {int dummy; } ;


 void* btree_remove_level (struct btree_head*,struct btree_geo*,unsigned long*,int) ;

void *btree_remove(struct btree_head *head, struct btree_geo *geo,
  unsigned long *key)
{
 if (head->height == 0)
  return ((void*)0);

 return btree_remove_level(head, geo, key, 1);
}
