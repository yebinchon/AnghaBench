
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct nfsd_file_mark {int dummy; } ;
struct nfsd_file {int dummy; } ;
struct TYPE_4__ {int nfb_lock; int nfb_head; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_DELAYED_WORK (int *,int ) ;
 int INIT_HLIST_HEAD (int *) ;
 scalar_t__ IS_ERR (int *) ;
 unsigned int NFSD_FILE_HASH_SIZE ;
 int NFSD_FILE_SHUTDOWN ;
 int PTR_ERR (int *) ;
 int clear_bit (int ,int *) ;
 int * fsnotify_alloc_group (int *) ;
 TYPE_1__* kcalloc (unsigned int,int,int ) ;
 int kfree (TYPE_1__*) ;
 int * kmem_cache_create (char*,int,int ,int ,int *) ;
 int kmem_cache_destroy (int *) ;
 int lease_register_notifier (int *) ;
 int lease_unregister_notifier (int *) ;
 int list_lru_destroy (int *) ;
 int list_lru_init (int *) ;
 int nfsd_file_delayed_close ;
 int * nfsd_file_fsnotify_group ;
 int nfsd_file_fsnotify_ops ;
 TYPE_1__* nfsd_file_hashtbl ;
 int nfsd_file_lease_notifier ;
 int nfsd_file_lru ;
 int nfsd_file_lru_flags ;
 int * nfsd_file_mark_slab ;
 int nfsd_file_shrinker ;
 int * nfsd_file_slab ;
 int nfsd_filecache_laundrette ;
 int pr_err (char*,...) ;
 int register_shrinker (int *) ;
 int spin_lock_init (int *) ;
 int unregister_shrinker (int *) ;

int
nfsd_file_cache_init(void)
{
 int ret = -ENOMEM;
 unsigned int i;

 clear_bit(NFSD_FILE_SHUTDOWN, &nfsd_file_lru_flags);

 if (nfsd_file_hashtbl)
  return 0;

 nfsd_file_hashtbl = kcalloc(NFSD_FILE_HASH_SIZE,
    sizeof(*nfsd_file_hashtbl), GFP_KERNEL);
 if (!nfsd_file_hashtbl) {
  pr_err("nfsd: unable to allocate nfsd_file_hashtbl\n");
  goto out_err;
 }

 nfsd_file_slab = kmem_cache_create("nfsd_file",
    sizeof(struct nfsd_file), 0, 0, ((void*)0));
 if (!nfsd_file_slab) {
  pr_err("nfsd: unable to create nfsd_file_slab\n");
  goto out_err;
 }

 nfsd_file_mark_slab = kmem_cache_create("nfsd_file_mark",
     sizeof(struct nfsd_file_mark), 0, 0, ((void*)0));
 if (!nfsd_file_mark_slab) {
  pr_err("nfsd: unable to create nfsd_file_mark_slab\n");
  goto out_err;
 }


 ret = list_lru_init(&nfsd_file_lru);
 if (ret) {
  pr_err("nfsd: failed to init nfsd_file_lru: %d\n", ret);
  goto out_err;
 }

 ret = register_shrinker(&nfsd_file_shrinker);
 if (ret) {
  pr_err("nfsd: failed to register nfsd_file_shrinker: %d\n", ret);
  goto out_lru;
 }

 ret = lease_register_notifier(&nfsd_file_lease_notifier);
 if (ret) {
  pr_err("nfsd: unable to register lease notifier: %d\n", ret);
  goto out_shrinker;
 }

 nfsd_file_fsnotify_group = fsnotify_alloc_group(&nfsd_file_fsnotify_ops);
 if (IS_ERR(nfsd_file_fsnotify_group)) {
  pr_err("nfsd: unable to create fsnotify group: %ld\n",
   PTR_ERR(nfsd_file_fsnotify_group));
  nfsd_file_fsnotify_group = ((void*)0);
  goto out_notifier;
 }

 for (i = 0; i < NFSD_FILE_HASH_SIZE; i++) {
  INIT_HLIST_HEAD(&nfsd_file_hashtbl[i].nfb_head);
  spin_lock_init(&nfsd_file_hashtbl[i].nfb_lock);
 }

 INIT_DELAYED_WORK(&nfsd_filecache_laundrette, nfsd_file_delayed_close);
out:
 return ret;
out_notifier:
 lease_unregister_notifier(&nfsd_file_lease_notifier);
out_shrinker:
 unregister_shrinker(&nfsd_file_shrinker);
out_lru:
 list_lru_destroy(&nfsd_file_lru);
out_err:
 kmem_cache_destroy(nfsd_file_slab);
 nfsd_file_slab = ((void*)0);
 kmem_cache_destroy(nfsd_file_mark_slab);
 nfsd_file_mark_slab = ((void*)0);
 kfree(nfsd_file_hashtbl);
 nfsd_file_hashtbl = ((void*)0);
 goto out;
}
