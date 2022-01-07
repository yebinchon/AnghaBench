
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cache_head {int cache_list; } ;
struct cache_detail {int hash_lock; int entries; } ;


 int cache_put (struct cache_head*,struct cache_detail*) ;
 int hlist_del_init_rcu (int *) ;
 int hlist_unhashed (int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

void sunrpc_cache_unhash(struct cache_detail *cd, struct cache_head *h)
{
 spin_lock(&cd->hash_lock);
 if (!hlist_unhashed(&h->cache_list)){
  hlist_del_init_rcu(&h->cache_list);
  cd->entries--;
  spin_unlock(&cd->hash_lock);
  cache_put(h, cd);
 } else
  spin_unlock(&cd->hash_lock);
}
