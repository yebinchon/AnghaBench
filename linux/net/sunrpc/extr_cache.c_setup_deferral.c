
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cache_head {int dummy; } ;
struct cache_deferred_req {int recent; struct cache_head* item; } ;


 int __hash_deferred_req (struct cache_deferred_req*,struct cache_head*) ;
 int cache_defer_cnt ;
 int cache_defer_list ;
 int cache_defer_lock ;
 int list_add (int *,int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void setup_deferral(struct cache_deferred_req *dreq,
      struct cache_head *item,
      int count_me)
{

 dreq->item = item;

 spin_lock(&cache_defer_lock);

 __hash_deferred_req(dreq, item);

 if (count_me) {
  cache_defer_cnt++;
  list_add(&dreq->recent, &cache_defer_list);
 }

 spin_unlock(&cache_defer_lock);

}
