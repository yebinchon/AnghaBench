
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct btree_geo {int no_pairs; } ;


 int bval (struct btree_geo*,unsigned long*,int) ;

__attribute__((used)) static int getfill(struct btree_geo *geo, unsigned long *node, int start)
{
 int i;

 for (i = start; i < geo->no_pairs; i++)
  if (!bval(geo, node, i))
   break;
 return i;
}
