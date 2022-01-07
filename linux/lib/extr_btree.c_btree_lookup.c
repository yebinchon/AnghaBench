
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct btree_head {int height; unsigned long* node; } ;
struct btree_geo {int no_pairs; } ;


 void* bval (struct btree_geo*,unsigned long*,int) ;
 scalar_t__ keycmp (struct btree_geo*,unsigned long*,int,unsigned long*) ;

void *btree_lookup(struct btree_head *head, struct btree_geo *geo,
  unsigned long *key)
{
 int i, height = head->height;
 unsigned long *node = head->node;

 if (height == 0)
  return ((void*)0);

 for ( ; height > 1; height--) {
  for (i = 0; i < geo->no_pairs; i++)
   if (keycmp(geo, node, i, key) <= 0)
    break;
  if (i == geo->no_pairs)
   return ((void*)0);
  node = bval(geo, node, i);
  if (!node)
   return ((void*)0);
 }

 if (!node)
  return ((void*)0);

 for (i = 0; i < geo->no_pairs; i++)
  if (keycmp(geo, node, i, key) == 0)
   return bval(geo, node, i);
 return ((void*)0);
}
