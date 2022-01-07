
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct btree_geo {int keylen; } ;



__attribute__((used)) static int keyzero(struct btree_geo *geo, unsigned long *key)
{
 int i;

 for (i = 0; i < geo->keylen; i++)
  if (key[i])
   return 0;

 return 1;
}
