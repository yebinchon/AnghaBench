
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct btree_geo {int no_longs; } ;



__attribute__((used)) static void setval(struct btree_geo *geo, unsigned long *node, int n,
     void *val)
{
 node[geo->no_longs + n] = (unsigned long) val;
}
