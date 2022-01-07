
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct btree_geo {int no_longs; int keylen; } ;


 int bkey (struct btree_geo*,unsigned long*,int) ;
 int longset (int ,int ,int ) ;

__attribute__((used)) static void clearpair(struct btree_geo *geo, unsigned long *node, int n)
{
 longset(bkey(geo, node, n), 0, geo->keylen);
 node[geo->no_longs + n] = 0;
}
