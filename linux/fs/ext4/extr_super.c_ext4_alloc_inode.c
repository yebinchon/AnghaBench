
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int dummy; } ;
struct inode {int dummy; } ;
struct ext4_inode_info {struct inode vfs_inode; int i_rsv_conversion_work; int i_unwritten; scalar_t__ i_datasync_tid; scalar_t__ i_sync_tid; int i_completed_io_lock; int i_rsv_conversion_list; int * jinode; int i_dquot; scalar_t__ i_reserved_quota; int i_pending_tree; int i_block_reservation_lock; scalar_t__ i_da_metadata_calc_last_lblock; scalar_t__ i_da_metadata_calc_len; scalar_t__ i_reserved_data_blocks; scalar_t__ i_es_shrink_lblk; scalar_t__ i_es_shk_nr; scalar_t__ i_es_all_nr; int i_es_list; int i_es_lock; int i_es_tree; int i_prealloc_lock; int i_prealloc_list; int i_raw_lock; } ;


 int GFP_NOFS ;
 int INIT_LIST_HEAD (int *) ;
 int INIT_WORK (int *,int ) ;
 int atomic_set (int *,int ) ;
 int ext4_end_io_rsv_work ;
 int ext4_es_init_tree (int *) ;
 int ext4_init_pending_tree (int *) ;
 int ext4_inode_cachep ;
 int inode_set_iversion (struct inode*,int) ;
 struct ext4_inode_info* kmem_cache_alloc (int ,int ) ;
 int memset (int *,int ,int) ;
 int rwlock_init (int *) ;
 int spin_lock_init (int *) ;

__attribute__((used)) static struct inode *ext4_alloc_inode(struct super_block *sb)
{
 struct ext4_inode_info *ei;

 ei = kmem_cache_alloc(ext4_inode_cachep, GFP_NOFS);
 if (!ei)
  return ((void*)0);

 inode_set_iversion(&ei->vfs_inode, 1);
 spin_lock_init(&ei->i_raw_lock);
 INIT_LIST_HEAD(&ei->i_prealloc_list);
 spin_lock_init(&ei->i_prealloc_lock);
 ext4_es_init_tree(&ei->i_es_tree);
 rwlock_init(&ei->i_es_lock);
 INIT_LIST_HEAD(&ei->i_es_list);
 ei->i_es_all_nr = 0;
 ei->i_es_shk_nr = 0;
 ei->i_es_shrink_lblk = 0;
 ei->i_reserved_data_blocks = 0;
 ei->i_da_metadata_calc_len = 0;
 ei->i_da_metadata_calc_last_lblock = 0;
 spin_lock_init(&(ei->i_block_reservation_lock));
 ext4_init_pending_tree(&ei->i_pending_tree);




 ei->jinode = ((void*)0);
 INIT_LIST_HEAD(&ei->i_rsv_conversion_list);
 spin_lock_init(&ei->i_completed_io_lock);
 ei->i_sync_tid = 0;
 ei->i_datasync_tid = 0;
 atomic_set(&ei->i_unwritten, 0);
 INIT_WORK(&ei->i_rsv_conversion_work, ext4_end_io_rsv_work);
 return &ei->vfs_inode;
}
