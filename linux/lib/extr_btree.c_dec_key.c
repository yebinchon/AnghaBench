
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct btree_geo {int keylen; } ;



__attribute__((used)) static void dec_key(struct btree_geo *geo, unsigned long *key)
{
 unsigned long val;
 int i;

 for (i = geo->keylen - 1; i >= 0; i--) {
  val = key[i];
  key[i] = val - 1;
  if (val)
   break;
 }
}
