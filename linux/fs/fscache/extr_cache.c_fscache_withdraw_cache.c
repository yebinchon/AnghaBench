
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct fscache_cache {TYPE_2__* tag; int kobj; int object_list; int object_count; TYPE_1__* ops; int link; int flags; } ;
struct TYPE_4__ {int flags; int * cache; int name; } ;
struct TYPE_3__ {int (* dissociate_pages ) (struct fscache_cache*) ;int (* sync_cache ) (struct fscache_cache*) ;} ;


 int ASSERT (int) ;
 int BUG () ;
 int FSCACHE_CACHE_WITHDRAWN ;
 int FSCACHE_TAG_RESERVED ;
 int LIST_HEAD (int ) ;
 int _debug (char*) ;
 int _enter (char*) ;
 int _leave (char*) ;
 scalar_t__ atomic_read (int *) ;
 int clear_bit (int ,int *) ;
 int down_write (int *) ;
 int dying_objects ;
 int fscache_addremove_sem ;
 int fscache_cache_cleared_wq ;
 int fscache_n_cop_dissociate_pages ;
 int fscache_n_cop_sync_cache ;
 int fscache_release_cache_tag (TYPE_2__*) ;
 int fscache_stat (int *) ;
 int fscache_stat_d (int *) ;
 int fscache_withdraw_all_objects (struct fscache_cache*,int *) ;
 int kobject_put (int ) ;
 int list_del_init (int *) ;
 int list_empty (int *) ;
 int pr_notice (char*,int ) ;
 int stub1 (struct fscache_cache*) ;
 int stub2 (struct fscache_cache*) ;
 scalar_t__ test_and_set_bit (int ,int *) ;
 int up_write (int *) ;
 int wait_event (int ,int) ;

void fscache_withdraw_cache(struct fscache_cache *cache)
{
 LIST_HEAD(dying_objects);

 _enter("");

 pr_notice("Withdrawing cache \"%s\"\n",
    cache->tag->name);


 if (test_and_set_bit(FSCACHE_CACHE_WITHDRAWN, &cache->flags))
  BUG();

 down_write(&fscache_addremove_sem);
 list_del_init(&cache->link);
 cache->tag->cache = ((void*)0);
 up_write(&fscache_addremove_sem);



 fscache_stat(&fscache_n_cop_sync_cache);
 cache->ops->sync_cache(cache);
 fscache_stat_d(&fscache_n_cop_sync_cache);



 fscache_stat(&fscache_n_cop_dissociate_pages);
 cache->ops->dissociate_pages(cache);
 fscache_stat_d(&fscache_n_cop_dissociate_pages);




 _debug("destroy");

 fscache_withdraw_all_objects(cache, &dying_objects);



 _debug("wait for finish");
 wait_event(fscache_cache_cleared_wq,
     atomic_read(&cache->object_count) == 0);
 _debug("wait for clearance");
 wait_event(fscache_cache_cleared_wq,
     list_empty(&cache->object_list));
 _debug("cleared");
 ASSERT(list_empty(&dying_objects));

 kobject_put(cache->kobj);

 clear_bit(FSCACHE_TAG_RESERVED, &cache->tag->flags);
 fscache_release_cache_tag(cache->tag);
 cache->tag = ((void*)0);

 _leave("");
}
