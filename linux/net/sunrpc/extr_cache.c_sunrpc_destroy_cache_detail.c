
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cache_detail {int hash_lock; int others; } ;


 int cache_cleaner ;
 int cache_list ;
 int cache_list_lock ;
 int cache_purge (struct cache_detail*) ;
 int cancel_delayed_work_sync (int *) ;
 struct cache_detail* current_detail ;
 int list_del_init (int *) ;
 scalar_t__ list_empty (int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

void sunrpc_destroy_cache_detail(struct cache_detail *cd)
{
 cache_purge(cd);
 spin_lock(&cache_list_lock);
 spin_lock(&cd->hash_lock);
 if (current_detail == cd)
  current_detail = ((void*)0);
 list_del_init(&cd->others);
 spin_unlock(&cd->hash_lock);
 spin_unlock(&cache_list_lock);
 if (list_empty(&cache_list)) {

  cancel_delayed_work_sync(&cache_cleaner);
 }
}
