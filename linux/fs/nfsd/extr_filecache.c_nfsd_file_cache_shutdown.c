
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int LIST_HEAD (int ) ;
 int NFSD_FILE_SHUTDOWN ;
 int cancel_delayed_work_sync (int *) ;
 int dispose ;
 int fsnotify_put_group (int *) ;
 int fsnotify_wait_marks_destroyed () ;
 int kfree (int *) ;
 int kmem_cache_destroy (int *) ;
 int lease_unregister_notifier (int *) ;
 int list_lru_destroy (int *) ;
 int nfsd_file_cache_purge (int *) ;
 int * nfsd_file_fsnotify_group ;
 int * nfsd_file_hashtbl ;
 int nfsd_file_lease_notifier ;
 int nfsd_file_lru ;
 int nfsd_file_lru_flags ;
 int * nfsd_file_mark_slab ;
 int nfsd_file_shrinker ;
 int * nfsd_file_slab ;
 int nfsd_filecache_laundrette ;
 int rcu_barrier () ;
 int set_bit (int ,int *) ;
 int unregister_shrinker (int *) ;

void
nfsd_file_cache_shutdown(void)
{
 LIST_HEAD(dispose);

 set_bit(NFSD_FILE_SHUTDOWN, &nfsd_file_lru_flags);

 lease_unregister_notifier(&nfsd_file_lease_notifier);
 unregister_shrinker(&nfsd_file_shrinker);




 cancel_delayed_work_sync(&nfsd_filecache_laundrette);
 nfsd_file_cache_purge(((void*)0));
 list_lru_destroy(&nfsd_file_lru);
 rcu_barrier();
 fsnotify_put_group(nfsd_file_fsnotify_group);
 nfsd_file_fsnotify_group = ((void*)0);
 kmem_cache_destroy(nfsd_file_slab);
 nfsd_file_slab = ((void*)0);
 fsnotify_wait_marks_destroyed();
 kmem_cache_destroy(nfsd_file_mark_slab);
 nfsd_file_mark_slab = ((void*)0);
 kfree(nfsd_file_hashtbl);
 nfsd_file_hashtbl = ((void*)0);
}
