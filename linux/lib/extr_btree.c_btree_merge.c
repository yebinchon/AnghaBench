
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct btree_head {int height; int node; } ;
struct btree_geo {int keylen; } ;
typedef int gfp_t ;


 int BUG_ON (int) ;
 int MAX_KEYLEN ;
 int __btree_init (struct btree_head*) ;
 int btree_insert (struct btree_head*,struct btree_geo*,unsigned long*,void*,int ) ;
 int btree_last (struct btree_head*,struct btree_geo*,unsigned long*) ;
 void* btree_lookup (struct btree_head*,struct btree_geo*,unsigned long*) ;
 int btree_remove (struct btree_head*,struct btree_geo*,unsigned long*) ;
 int longcpy (unsigned long*,unsigned long*,int ) ;

int btree_merge(struct btree_head *target, struct btree_head *victim,
  struct btree_geo *geo, gfp_t gfp)
{
 unsigned long key[MAX_KEYLEN];
 unsigned long dup[MAX_KEYLEN];
 void *val;
 int err;

 BUG_ON(target == victim);

 if (!(target->node)) {

  target->node = victim->node;
  target->height = victim->height;
  __btree_init(victim);
  return 0;
 }




 for (;;) {
  if (!btree_last(victim, geo, key))
   break;
  val = btree_lookup(victim, geo, key);
  err = btree_insert(target, geo, key, val, gfp);
  if (err)
   return err;


  longcpy(dup, key, geo->keylen);
  btree_remove(victim, geo, dup);
 }
 return 0;
}
