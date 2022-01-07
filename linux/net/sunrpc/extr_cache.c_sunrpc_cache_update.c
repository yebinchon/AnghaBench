
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cache_head {int expiry_time; int cache_list; int flags; } ;
struct cache_detail {int hash_lock; int entries; int * hash_table; int (* update ) (struct cache_head*,struct cache_head*) ;int (* init ) (struct cache_head*,struct cache_head*) ;struct cache_head* (* alloc ) () ;} ;


 int CACHE_NEGATIVE ;
 int CACHE_VALID ;
 int cache_fresh_locked (struct cache_head*,int ,struct cache_detail*) ;
 int cache_fresh_unlocked (struct cache_head*,struct cache_detail*) ;
 int cache_get (struct cache_head*) ;
 int cache_init (struct cache_head*,struct cache_detail*) ;
 int cache_put (struct cache_head*,struct cache_detail*) ;
 int hlist_add_head (int *,int *) ;
 int set_bit (int ,int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int stub1 (struct cache_head*,struct cache_head*) ;
 struct cache_head* stub2 () ;
 int stub3 (struct cache_head*,struct cache_head*) ;
 int stub4 (struct cache_head*,struct cache_head*) ;
 scalar_t__ test_bit (int ,int *) ;

struct cache_head *sunrpc_cache_update(struct cache_detail *detail,
           struct cache_head *new, struct cache_head *old, int hash)
{




 struct cache_head *tmp;

 if (!test_bit(CACHE_VALID, &old->flags)) {
  spin_lock(&detail->hash_lock);
  if (!test_bit(CACHE_VALID, &old->flags)) {
   if (test_bit(CACHE_NEGATIVE, &new->flags))
    set_bit(CACHE_NEGATIVE, &old->flags);
   else
    detail->update(old, new);
   cache_fresh_locked(old, new->expiry_time, detail);
   spin_unlock(&detail->hash_lock);
   cache_fresh_unlocked(old, detail);
   return old;
  }
  spin_unlock(&detail->hash_lock);
 }

 tmp = detail->alloc();
 if (!tmp) {
  cache_put(old, detail);
  return ((void*)0);
 }
 cache_init(tmp, detail);
 detail->init(tmp, old);

 spin_lock(&detail->hash_lock);
 if (test_bit(CACHE_NEGATIVE, &new->flags))
  set_bit(CACHE_NEGATIVE, &tmp->flags);
 else
  detail->update(tmp, new);
 hlist_add_head(&tmp->cache_list, &detail->hash_table[hash]);
 detail->entries++;
 cache_get(tmp);
 cache_fresh_locked(tmp, new->expiry_time, detail);
 cache_fresh_locked(old, 0, detail);
 spin_unlock(&detail->hash_lock);
 cache_fresh_unlocked(tmp, detail);
 cache_fresh_unlocked(old, detail);
 cache_put(old, detail);
 return tmp;
}
