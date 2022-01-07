
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct neighbour {int hash_shift; int rcu; int * hash_buckets; int next; int hash_rnd; int dev; int primary_key; } ;
struct neigh_table {unsigned int (* hash ) (int ,int ,int ) ;int nht; int lock; } ;
struct neigh_hash_table {int hash_shift; int rcu; int * hash_buckets; int next; int hash_rnd; int dev; int primary_key; } ;


 int NEIGH_CACHE_STAT_INC (struct neigh_table*,int ) ;
 int call_rcu (int *,int ) ;
 int hash_grows ;
 int lockdep_is_held (int *) ;
 struct neighbour* neigh_hash_alloc (unsigned long) ;
 int neigh_hash_free_rcu ;
 int rcu_assign_pointer (int ,struct neighbour*) ;
 struct neighbour* rcu_dereference_protected (int ,int ) ;
 unsigned int stub1 (int ,int ,int ) ;

__attribute__((used)) static struct neigh_hash_table *neigh_hash_grow(struct neigh_table *tbl,
      unsigned long new_shift)
{
 unsigned int i, hash;
 struct neigh_hash_table *new_nht, *old_nht;

 NEIGH_CACHE_STAT_INC(tbl, hash_grows);

 old_nht = rcu_dereference_protected(tbl->nht,
         lockdep_is_held(&tbl->lock));
 new_nht = neigh_hash_alloc(new_shift);
 if (!new_nht)
  return old_nht;

 for (i = 0; i < (1 << old_nht->hash_shift); i++) {
  struct neighbour *n, *next;

  for (n = rcu_dereference_protected(old_nht->hash_buckets[i],
         lockdep_is_held(&tbl->lock));
       n != ((void*)0);
       n = next) {
   hash = tbl->hash(n->primary_key, n->dev,
      new_nht->hash_rnd);

   hash >>= (32 - new_nht->hash_shift);
   next = rcu_dereference_protected(n->next,
      lockdep_is_held(&tbl->lock));

   rcu_assign_pointer(n->next,
        rcu_dereference_protected(
      new_nht->hash_buckets[hash],
      lockdep_is_held(&tbl->lock)));
   rcu_assign_pointer(new_nht->hash_buckets[hash], n);
  }
 }

 rcu_assign_pointer(tbl->nht, new_nht);
 call_rcu(&old_nht->rcu, neigh_hash_free_rcu);
 return new_nht;
}
