
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct btree_head {int height; unsigned long* node; } ;
struct btree_geo {int no_pairs; int keylen; } ;


 int MAX_KEYLEN ;
 unsigned long* bkey (struct btree_geo*,unsigned long*,int) ;
 void* bval (struct btree_geo*,unsigned long*,int) ;
 int dec_key (struct btree_geo*,unsigned long*) ;
 scalar_t__ keycmp (struct btree_geo*,unsigned long*,int,unsigned long*) ;
 scalar_t__ keyzero (struct btree_geo*,unsigned long*) ;
 int longcpy (unsigned long*,unsigned long*,int ) ;

void *btree_get_prev(struct btree_head *head, struct btree_geo *geo,
       unsigned long *__key)
{
 int i, height;
 unsigned long *node, *oldnode;
 unsigned long *retry_key = ((void*)0), key[MAX_KEYLEN];

 if (keyzero(geo, __key))
  return ((void*)0);

 if (head->height == 0)
  return ((void*)0);
 longcpy(key, __key, geo->keylen);
retry:
 dec_key(geo, key);

 node = head->node;
 for (height = head->height ; height > 1; height--) {
  for (i = 0; i < geo->no_pairs; i++)
   if (keycmp(geo, node, i, key) <= 0)
    break;
  if (i == geo->no_pairs)
   goto miss;
  oldnode = node;
  node = bval(geo, node, i);
  if (!node)
   goto miss;
  retry_key = bkey(geo, oldnode, i);
 }

 if (!node)
  goto miss;

 for (i = 0; i < geo->no_pairs; i++) {
  if (keycmp(geo, node, i, key) <= 0) {
   if (bval(geo, node, i)) {
    longcpy(__key, bkey(geo, node, i), geo->keylen);
    return bval(geo, node, i);
   } else
    goto miss;
  }
 }
miss:
 if (retry_key) {
  longcpy(key, retry_key, geo->keylen);
  retry_key = ((void*)0);
  goto retry;
 }
 return ((void*)0);
}
