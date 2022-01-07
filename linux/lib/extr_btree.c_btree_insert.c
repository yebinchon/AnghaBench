
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct btree_head {int dummy; } ;
struct btree_geo {int dummy; } ;
typedef int gfp_t ;


 int BUG_ON (int) ;
 int btree_insert_level (struct btree_head*,struct btree_geo*,unsigned long*,void*,int,int ) ;

int btree_insert(struct btree_head *head, struct btree_geo *geo,
  unsigned long *key, void *val, gfp_t gfp)
{
 BUG_ON(!val);
 return btree_insert_level(head, geo, key, val, 1, gfp);
}
