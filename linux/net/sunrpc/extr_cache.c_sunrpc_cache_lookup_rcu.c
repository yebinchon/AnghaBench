
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cache_head {int dummy; } ;
struct cache_detail {int dummy; } ;


 struct cache_head* sunrpc_cache_add_entry (struct cache_detail*,struct cache_head*,int) ;
 struct cache_head* sunrpc_cache_find_rcu (struct cache_detail*,struct cache_head*,int) ;

struct cache_head *sunrpc_cache_lookup_rcu(struct cache_detail *detail,
        struct cache_head *key, int hash)
{
 struct cache_head *ret;

 ret = sunrpc_cache_find_rcu(detail, key, hash);
 if (ret)
  return ret;

 return sunrpc_cache_add_entry(detail, key, hash);
}
