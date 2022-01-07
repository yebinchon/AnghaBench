
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct btree_head {unsigned long* node; int height; } ;
struct btree_geo {int no_pairs; } ;


 int BUG_ON (int) ;
 unsigned long* bval (struct btree_geo*,unsigned long*,int) ;
 scalar_t__ keycmp (struct btree_geo*,unsigned long*,int,unsigned long*) ;
 int setkey (struct btree_geo*,unsigned long*,int,unsigned long*) ;

__attribute__((used)) static unsigned long *find_level(struct btree_head *head, struct btree_geo *geo,
  unsigned long *key, int level)
{
 unsigned long *node = head->node;
 int i, height;

 for (height = head->height; height > level; height--) {
  for (i = 0; i < geo->no_pairs; i++)
   if (keycmp(geo, node, i, key) <= 0)
    break;

  if ((i == geo->no_pairs) || !bval(geo, node, i)) {



   i--;
   setkey(geo, node, i, key);
  }
  BUG_ON(i < 0);
  node = bval(geo, node, i);
 }
 BUG_ON(!node);
 return node;
}
