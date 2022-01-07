
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct btree_geo {int keylen; } ;


 int bkey (struct btree_geo*,unsigned long*,int) ;
 int longcmp (int ,unsigned long*,int ) ;

__attribute__((used)) static int keycmp(struct btree_geo *geo, unsigned long *node, int pos,
    unsigned long *key)
{
 return longcmp(bkey(geo, node, pos), key, geo->keylen);
}
