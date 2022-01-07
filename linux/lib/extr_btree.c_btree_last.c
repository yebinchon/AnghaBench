
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct btree_head {int height; unsigned long* node; } ;
struct btree_geo {int keylen; } ;


 int bkey (struct btree_geo*,unsigned long*,int ) ;
 void* bval (struct btree_geo*,unsigned long*,int ) ;
 int longcpy (unsigned long*,int ,int ) ;

void *btree_last(struct btree_head *head, struct btree_geo *geo,
   unsigned long *key)
{
 int height = head->height;
 unsigned long *node = head->node;

 if (height == 0)
  return ((void*)0);

 for ( ; height > 1; height--)
  node = bval(geo, node, 0);

 longcpy(key, bkey(geo, node, 0), geo->keylen);
 return bval(geo, node, 0);
}
