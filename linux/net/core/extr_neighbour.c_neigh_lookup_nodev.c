
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u32 ;
struct net {int dummy; } ;
struct neighbour {int refcnt; int dev; int primary_key; int next; } ;
struct neigh_table {unsigned int key_len; int (* hash ) (void const*,int *,int ) ;int nht; } ;
struct neigh_hash_table {int hash_shift; int * hash_buckets; int hash_rnd; } ;


 int NEIGH_CACHE_STAT_INC (struct neigh_table*,int ) ;
 int dev_net (int ) ;
 int hits ;
 int lookups ;
 int memcmp (int ,void const*,unsigned int) ;
 scalar_t__ net_eq (int ,struct net*) ;
 void* rcu_dereference_bh (int ) ;
 int rcu_read_lock_bh () ;
 int rcu_read_unlock_bh () ;
 int refcount_inc_not_zero (int *) ;
 int stub1 (void const*,int *,int ) ;

struct neighbour *neigh_lookup_nodev(struct neigh_table *tbl, struct net *net,
         const void *pkey)
{
 struct neighbour *n;
 unsigned int key_len = tbl->key_len;
 u32 hash_val;
 struct neigh_hash_table *nht;

 NEIGH_CACHE_STAT_INC(tbl, lookups);

 rcu_read_lock_bh();
 nht = rcu_dereference_bh(tbl->nht);
 hash_val = tbl->hash(pkey, ((void*)0), nht->hash_rnd) >> (32 - nht->hash_shift);

 for (n = rcu_dereference_bh(nht->hash_buckets[hash_val]);
      n != ((void*)0);
      n = rcu_dereference_bh(n->next)) {
  if (!memcmp(n->primary_key, pkey, key_len) &&
      net_eq(dev_net(n->dev), net)) {
   if (!refcount_inc_not_zero(&n->refcnt))
    n = ((void*)0);
   NEIGH_CACHE_STAT_INC(tbl, hits);
   break;
  }
 }

 rcu_read_unlock_bh();
 return n;
}
