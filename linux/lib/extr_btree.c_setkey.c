
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct btree_geo {int keylen; } ;


 int bkey (struct btree_geo*,unsigned long*,int) ;
 int longcpy (int ,unsigned long*,int ) ;

__attribute__((used)) static void setkey(struct btree_geo *geo, unsigned long *node, int n,
     unsigned long *key)
{
 longcpy(bkey(geo, node, n), key, geo->keylen);
}
