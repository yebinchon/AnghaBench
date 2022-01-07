
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct the_nilfs {int ns_sb_update_freq; int ns_segctor_sem; int ns_cptree_lock; int ns_cptree; int ns_last_segment_lock; int ns_next_gen_lock; int ns_inode_lock; int ns_gc_inodes; int ns_dirty_files; int ns_snapshot_mount_mutex; int ns_sem; int ns_ndirtyblks; int ns_bdev; struct super_block* ns_sb; } ;
struct super_block {int s_bdev; } ;


 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int NILFS_SB_FREQ ;
 int RB_ROOT ;
 int atomic_set (int *,int ) ;
 int init_rwsem (int *) ;
 struct the_nilfs* kzalloc (int,int ) ;
 int mutex_init (int *) ;
 int spin_lock_init (int *) ;

struct the_nilfs *alloc_nilfs(struct super_block *sb)
{
 struct the_nilfs *nilfs;

 nilfs = kzalloc(sizeof(*nilfs), GFP_KERNEL);
 if (!nilfs)
  return ((void*)0);

 nilfs->ns_sb = sb;
 nilfs->ns_bdev = sb->s_bdev;
 atomic_set(&nilfs->ns_ndirtyblks, 0);
 init_rwsem(&nilfs->ns_sem);
 mutex_init(&nilfs->ns_snapshot_mount_mutex);
 INIT_LIST_HEAD(&nilfs->ns_dirty_files);
 INIT_LIST_HEAD(&nilfs->ns_gc_inodes);
 spin_lock_init(&nilfs->ns_inode_lock);
 spin_lock_init(&nilfs->ns_next_gen_lock);
 spin_lock_init(&nilfs->ns_last_segment_lock);
 nilfs->ns_cptree = RB_ROOT;
 spin_lock_init(&nilfs->ns_cptree_lock);
 init_rwsem(&nilfs->ns_segctor_sem);
 nilfs->ns_sb_update_freq = NILFS_SB_FREQ;

 return nilfs;
}
