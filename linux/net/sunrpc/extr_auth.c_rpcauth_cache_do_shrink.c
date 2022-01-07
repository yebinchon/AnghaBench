
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int LIST_HEAD (int ) ;
 int free ;
 int rpc_credcache_lock ;
 int rpcauth_destroy_credlist (int *) ;
 unsigned long rpcauth_prune_expired (int *,int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static unsigned long
rpcauth_cache_do_shrink(int nr_to_scan)
{
 LIST_HEAD(free);
 unsigned long freed;

 spin_lock(&rpc_credcache_lock);
 freed = rpcauth_prune_expired(&free, nr_to_scan);
 spin_unlock(&rpc_credcache_lock);
 rpcauth_destroy_credlist(&free);

 return freed;
}
