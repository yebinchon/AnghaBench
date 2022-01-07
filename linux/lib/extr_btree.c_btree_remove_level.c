
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct btree_head {int height; int * node; } ;
struct btree_geo {int no_pairs; } ;


 int bkey (struct btree_geo*,unsigned long*,int) ;
 int btree_shrink (struct btree_head*,struct btree_geo*) ;
 void* bval (struct btree_geo*,unsigned long*,int) ;
 int clearpair (struct btree_geo*,unsigned long*,int) ;
 unsigned long* find_level (struct btree_head*,struct btree_geo*,unsigned long*,int) ;
 int getfill (struct btree_geo*,unsigned long*,int) ;
 int getpos (struct btree_geo*,unsigned long*,unsigned long*) ;
 scalar_t__ keycmp (struct btree_geo*,unsigned long*,int,unsigned long*) ;
 int rebalance (struct btree_head*,struct btree_geo*,unsigned long*,int,unsigned long*,int) ;
 int setkey (struct btree_geo*,unsigned long*,int,int ) ;
 int setval (struct btree_geo*,unsigned long*,int,void*) ;

__attribute__((used)) static void *btree_remove_level(struct btree_head *head, struct btree_geo *geo,
  unsigned long *key, int level)
{
 unsigned long *node;
 int i, pos, fill;
 void *ret;

 if (level > head->height) {

  head->height = 0;
  head->node = ((void*)0);
  return ((void*)0);
 }

 node = find_level(head, geo, key, level);
 pos = getpos(geo, node, key);
 fill = getfill(geo, node, pos);
 if ((level == 1) && (keycmp(geo, node, pos, key) != 0))
  return ((void*)0);
 ret = bval(geo, node, pos);


 for (i = pos; i < fill - 1; i++) {
  setkey(geo, node, i, bkey(geo, node, i + 1));
  setval(geo, node, i, bval(geo, node, i + 1));
 }
 clearpair(geo, node, fill - 1);

 if (fill - 1 < geo->no_pairs / 2) {
  if (level < head->height)
   rebalance(head, geo, key, level, node, fill - 1);
  else if (fill - 1 == 1)
   btree_shrink(head, geo);
 }

 return ret;
}
