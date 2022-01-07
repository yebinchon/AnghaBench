
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct btree_head {int mempool; } ;
struct btree_geo {int no_pairs; } ;


 int BUG_ON (int) ;
 int btree_remove_level (struct btree_head*,struct btree_geo*,unsigned long*,int) ;
 unsigned long* bval (struct btree_geo*,unsigned long*,int) ;
 unsigned long* find_level (struct btree_head*,struct btree_geo*,unsigned long*,int) ;
 int getfill (struct btree_geo*,unsigned long*,int) ;
 int getpos (struct btree_geo*,unsigned long*,unsigned long*) ;
 int mempool_free (unsigned long*,int ) ;
 int merge (struct btree_head*,struct btree_geo*,int,unsigned long*,int,unsigned long*,int,unsigned long*,int) ;

__attribute__((used)) static void rebalance(struct btree_head *head, struct btree_geo *geo,
  unsigned long *key, int level, unsigned long *child, int fill)
{
 unsigned long *parent, *left = ((void*)0), *right = ((void*)0);
 int i, no_left, no_right;

 if (fill == 0) {




  btree_remove_level(head, geo, key, level + 1);
  mempool_free(child, head->mempool);
  return;
 }

 parent = find_level(head, geo, key, level + 1);
 i = getpos(geo, parent, key);
 BUG_ON(bval(geo, parent, i) != child);

 if (i > 0) {
  left = bval(geo, parent, i - 1);
  no_left = getfill(geo, left, 0);
  if (fill + no_left <= geo->no_pairs) {
   merge(head, geo, level,
     left, no_left,
     child, fill,
     parent, i - 1);
   return;
  }
 }
 if (i + 1 < getfill(geo, parent, i)) {
  right = bval(geo, parent, i + 1);
  no_right = getfill(geo, right, 0);
  if (fill + no_right <= geo->no_pairs) {
   merge(head, geo, level,
     child, fill,
     right, no_right,
     parent, i);
   return;
  }
 }







}
