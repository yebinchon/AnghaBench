
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct user_namespace {int dummy; } ;
struct super_operations {int dummy; } ;
struct TYPE_7__ {int batch; int flags; int count_objects; int scan_objects; int seeks; } ;
struct TYPE_6__ {int dqio_sem; } ;
struct TYPE_5__ {int wait_unfrozen; int * rw_sem; } ;
struct super_block {int s_flags; int s_count; int s_time_gran; TYPE_3__ s_shrink; int s_inode_lru; int s_dentry_lru; int cleancache_poolid; int s_time_max; int s_time_min; struct super_operations const* s_op; int s_maxbytes; TYPE_2__ s_dquot; int s_vfs_rename_mutex; int s_active; int s_inode_wblist_lock; int s_inodes_wb; int s_inode_list_lock; int s_inodes; int s_sync_lock; int s_roots; int s_instances; int s_iflags; int * s_user_ns; int * s_bdi; TYPE_1__ s_writers; int s_umount; int s_mounts; } ;
struct file_system_type {int s_vfs_rename_key; int * s_writers_key; int s_umount_key; } ;


 int CLEANCACHE_NO_POOL ;
 int DEFAULT_SEEKS ;
 int GFP_USER ;
 int INIT_HLIST_BL_HEAD (int *) ;
 int INIT_HLIST_NODE (int *) ;
 int INIT_LIST_HEAD (int *) ;
 int MAX_NON_LFS ;
 int SB_FREEZE_LEVELS ;
 int SB_I_NODEV ;
 int SHRINKER_MEMCG_AWARE ;
 int SHRINKER_NUMA_AWARE ;
 int SINGLE_DEPTH_NESTING ;
 int TIME64_MAX ;
 int TIME64_MIN ;
 scalar_t__ __percpu_init_rwsem (int *,int ,int *) ;
 int atomic_set (int *,int) ;
 int destroy_unused_super (struct super_block*) ;
 int down_write_nested (int *,int ) ;
 int * get_user_ns (struct user_namespace*) ;
 int init_rwsem (int *) ;
 int init_user_ns ;
 int init_waitqueue_head (int *) ;
 struct super_block* kzalloc (int,int ) ;
 scalar_t__ list_lru_init_memcg (int *,TYPE_3__*) ;
 int lockdep_set_class (int *,int *) ;
 int mutex_init (int *) ;
 int noop_backing_dev_info ;
 scalar_t__ prealloc_shrinker (TYPE_3__*) ;
 int * sb_writers_name ;
 scalar_t__ security_sb_alloc (struct super_block*) ;
 int spin_lock_init (int *) ;
 int super_cache_count ;
 int super_cache_scan ;

__attribute__((used)) static struct super_block *alloc_super(struct file_system_type *type, int flags,
           struct user_namespace *user_ns)
{
 struct super_block *s = kzalloc(sizeof(struct super_block), GFP_USER);
 static const struct super_operations default_op;
 int i;

 if (!s)
  return ((void*)0);

 INIT_LIST_HEAD(&s->s_mounts);
 s->s_user_ns = get_user_ns(user_ns);
 init_rwsem(&s->s_umount);
 lockdep_set_class(&s->s_umount, &type->s_umount_key);
 down_write_nested(&s->s_umount, SINGLE_DEPTH_NESTING);

 if (security_sb_alloc(s))
  goto fail;

 for (i = 0; i < SB_FREEZE_LEVELS; i++) {
  if (__percpu_init_rwsem(&s->s_writers.rw_sem[i],
     sb_writers_name[i],
     &type->s_writers_key[i]))
   goto fail;
 }
 init_waitqueue_head(&s->s_writers.wait_unfrozen);
 s->s_bdi = &noop_backing_dev_info;
 s->s_flags = flags;
 if (s->s_user_ns != &init_user_ns)
  s->s_iflags |= SB_I_NODEV;
 INIT_HLIST_NODE(&s->s_instances);
 INIT_HLIST_BL_HEAD(&s->s_roots);
 mutex_init(&s->s_sync_lock);
 INIT_LIST_HEAD(&s->s_inodes);
 spin_lock_init(&s->s_inode_list_lock);
 INIT_LIST_HEAD(&s->s_inodes_wb);
 spin_lock_init(&s->s_inode_wblist_lock);

 s->s_count = 1;
 atomic_set(&s->s_active, 1);
 mutex_init(&s->s_vfs_rename_mutex);
 lockdep_set_class(&s->s_vfs_rename_mutex, &type->s_vfs_rename_key);
 init_rwsem(&s->s_dquot.dqio_sem);
 s->s_maxbytes = MAX_NON_LFS;
 s->s_op = &default_op;
 s->s_time_gran = 1000000000;
 s->s_time_min = TIME64_MIN;
 s->s_time_max = TIME64_MAX;
 s->cleancache_poolid = CLEANCACHE_NO_POOL;

 s->s_shrink.seeks = DEFAULT_SEEKS;
 s->s_shrink.scan_objects = super_cache_scan;
 s->s_shrink.count_objects = super_cache_count;
 s->s_shrink.batch = 1024;
 s->s_shrink.flags = SHRINKER_NUMA_AWARE | SHRINKER_MEMCG_AWARE;
 if (prealloc_shrinker(&s->s_shrink))
  goto fail;
 if (list_lru_init_memcg(&s->s_dentry_lru, &s->s_shrink))
  goto fail;
 if (list_lru_init_memcg(&s->s_inode_lru, &s->s_shrink))
  goto fail;
 return s;

fail:
 destroy_unused_super(s);
 return ((void*)0);
}
