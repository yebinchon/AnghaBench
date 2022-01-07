
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct btree_geo {int no_pairs; } ;


 scalar_t__ keycmp (struct btree_geo*,unsigned long*,int,unsigned long*) ;

__attribute__((used)) static int getpos(struct btree_geo *geo, unsigned long *node,
  unsigned long *key)
{
 int i;

 for (i = 0; i < geo->no_pairs; i++) {
  if (keycmp(geo, node, i, key) <= 0)
   break;
 }
 return i;
}
