
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ max; } ;
struct xt_hashlimit_htable {int rnd_initialized; scalar_t__ count; int lock; int * hash; TYPE_1__ cfg; int rnd; } ;
struct dsthash_ent {int node; int lock; int dst; } ;
struct dsthash_dst {int dummy; } ;


 int GFP_ATOMIC ;
 struct dsthash_ent* dsthash_find (struct xt_hashlimit_htable*,struct dsthash_dst const*) ;
 int get_random_bytes (int *,int) ;
 size_t hash_dst (struct xt_hashlimit_htable*,struct dsthash_dst const*) ;
 int hashlimit_cachep ;
 int hlist_add_head_rcu (int *,int *) ;
 struct dsthash_ent* kmem_cache_alloc (int ,int ) ;
 int memcpy (int *,struct dsthash_dst const*,int) ;
 int net_err_ratelimited (char*,scalar_t__) ;
 int spin_lock (int *) ;
 int spin_lock_init (int *) ;
 int spin_unlock (int *) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static struct dsthash_ent *
dsthash_alloc_init(struct xt_hashlimit_htable *ht,
     const struct dsthash_dst *dst, bool *race)
{
 struct dsthash_ent *ent;

 spin_lock(&ht->lock);




 ent = dsthash_find(ht, dst);
 if (ent != ((void*)0)) {
  spin_unlock(&ht->lock);
  *race = 1;
  return ent;
 }



 if (unlikely(!ht->rnd_initialized)) {
  get_random_bytes(&ht->rnd, sizeof(ht->rnd));
  ht->rnd_initialized = 1;
 }

 if (ht->cfg.max && ht->count >= ht->cfg.max) {

  net_err_ratelimited("max count of %u reached\n", ht->cfg.max);
  ent = ((void*)0);
 } else
  ent = kmem_cache_alloc(hashlimit_cachep, GFP_ATOMIC);
 if (ent) {
  memcpy(&ent->dst, dst, sizeof(ent->dst));
  spin_lock_init(&ent->lock);

  spin_lock(&ent->lock);
  hlist_add_head_rcu(&ent->node, &ht->hash[hash_dst(ht, dst)]);
  ht->count++;
 }
 spin_unlock(&ht->lock);
 return ent;
}
