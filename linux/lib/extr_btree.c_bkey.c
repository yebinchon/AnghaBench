
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct btree_geo {int keylen; } ;



__attribute__((used)) static unsigned long *bkey(struct btree_geo *geo, unsigned long *node, int n)
{
 return &node[n * geo->keylen];
}
