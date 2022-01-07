
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cache_deferred_req {int recent; int hash; } ;


 int cache_defer_cnt ;
 int hlist_del_init (int *) ;
 int list_del_init (int *) ;
 int list_empty (int *) ;

__attribute__((used)) static void __unhash_deferred_req(struct cache_deferred_req *dreq)
{
 hlist_del_init(&dreq->hash);
 if (!list_empty(&dreq->recent)) {
  list_del_init(&dreq->recent);
  cache_defer_cnt--;
 }
}
