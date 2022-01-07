
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cache_head {int dummy; } ;
struct cache_deferred_req {int hash; int recent; } ;


 int DFR_HASH (struct cache_head*) ;
 int INIT_LIST_HEAD (int *) ;
 int * cache_defer_hash ;
 int hlist_add_head (int *,int *) ;

__attribute__((used)) static void __hash_deferred_req(struct cache_deferred_req *dreq, struct cache_head *item)
{
 int hash = DFR_HASH(item);

 INIT_LIST_HEAD(&dreq->recent);
 hlist_add_head(&dreq->hash, &cache_defer_hash[hash]);
}
