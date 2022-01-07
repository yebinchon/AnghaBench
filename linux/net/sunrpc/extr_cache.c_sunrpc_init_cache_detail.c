
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cache_detail {int last_warn; int others; scalar_t__ last_close; int writers; scalar_t__ entries; scalar_t__ nextcheck; int queue; int hash_lock; } ;


 int INIT_LIST_HEAD (int *) ;
 int atomic_set (int *,int ) ;
 int cache_cleaner ;
 int cache_list ;
 int cache_list_lock ;
 int list_add (int *,int *) ;
 int queue_delayed_work (int ,int *,int ) ;
 int spin_lock (int *) ;
 int spin_lock_init (int *) ;
 int spin_unlock (int *) ;
 int system_power_efficient_wq ;

void sunrpc_init_cache_detail(struct cache_detail *cd)
{
 spin_lock_init(&cd->hash_lock);
 INIT_LIST_HEAD(&cd->queue);
 spin_lock(&cache_list_lock);
 cd->nextcheck = 0;
 cd->entries = 0;
 atomic_set(&cd->writers, 0);
 cd->last_close = 0;
 cd->last_warn = -1;
 list_add(&cd->others, &cache_list);
 spin_unlock(&cache_list_lock);


 queue_delayed_work(system_power_efficient_wq, &cache_cleaner, 0);
}
