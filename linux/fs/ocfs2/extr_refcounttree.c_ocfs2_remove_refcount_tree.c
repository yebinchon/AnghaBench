
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u16 ;
struct ocfs2_super {int dummy; } ;
struct ocfs2_refcount_tree {int rf_ci; } ;
struct ocfs2_refcount_block {int rf_count; int rf_suballoc_slot; scalar_t__ rf_suballoc_loc; int rf_suballoc_bit; scalar_t__ rf_blkno; } ;
struct ocfs2_inode_info {int ip_lock; int ip_dyn_features; } ;
struct ocfs2_dinode {scalar_t__ i_refcount_loc; int i_dyn_features; } ;
struct inode {int i_sb; } ;
struct buffer_head {scalar_t__ b_data; } ;
typedef int handle_t ;


 int BUG_ON (int) ;
 int ENOMEM ;
 int EXTENT_ALLOC_SYSTEM_INODE ;
 int INODE_CACHE (struct inode*) ;
 scalar_t__ IS_ERR (int *) ;
 int OCFS2_HAS_REFCOUNT_FL ;
 struct ocfs2_inode_info* OCFS2_I (struct inode*) ;
 int OCFS2_JOURNAL_ACCESS_WRITE ;
 int OCFS2_REFCOUNT_TREE_REMOVE_CREDITS ;
 struct ocfs2_super* OCFS2_SB (int ) ;
 scalar_t__ OCFS2_SUBALLOC_FREE ;
 int PTR_ERR (int *) ;
 int brelse (struct buffer_head*) ;
 int cpu_to_le16 (int ) ;
 int inode_lock (struct inode*) ;
 int inode_unlock (struct inode*) ;
 int iput (struct inode*) ;
 int le16_to_cpu (int ) ;
 int le32_add_cpu (int *,int) ;
 int le32_to_cpu (int ) ;
 int le64_to_cpu (scalar_t__) ;
 int mlog_errno (int) ;
 int ocfs2_commit_trans (struct ocfs2_super*,int *) ;
 int ocfs2_erase_refcount_tree_from_list (struct ocfs2_super*,struct ocfs2_refcount_tree*) ;
 int ocfs2_free_suballoc_bits (int *,struct inode*,struct buffer_head*,int ,int ,int) ;
 struct inode* ocfs2_get_system_file_inode (struct ocfs2_super*,int ,int ) ;
 int ocfs2_inode_lock (struct inode*,struct buffer_head**,int) ;
 int ocfs2_inode_unlock (struct inode*,int) ;
 int ocfs2_is_refcount_inode (struct inode*) ;
 int ocfs2_journal_access_di (int *,int ,struct buffer_head*,int ) ;
 int ocfs2_journal_access_rb (int *,int *,struct buffer_head*,int ) ;
 int ocfs2_journal_dirty (int *,struct buffer_head*) ;
 int ocfs2_lock_refcount_tree (struct ocfs2_super*,int ,int,struct ocfs2_refcount_tree**,struct buffer_head**) ;
 int ocfs2_refcount_tree_put (struct ocfs2_refcount_tree*) ;
 int * ocfs2_start_trans (struct ocfs2_super*,int) ;
 int ocfs2_unlock_refcount_tree (struct ocfs2_super*,struct ocfs2_refcount_tree*,int) ;
 int ocfs2_which_suballoc_group (int ,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

int ocfs2_remove_refcount_tree(struct inode *inode, struct buffer_head *di_bh)
{
 int ret, delete_tree = 0;
 handle_t *handle = ((void*)0);
 struct ocfs2_dinode *di = (struct ocfs2_dinode *)di_bh->b_data;
 struct ocfs2_inode_info *oi = OCFS2_I(inode);
 struct ocfs2_super *osb = OCFS2_SB(inode->i_sb);
 struct ocfs2_refcount_block *rb;
 struct inode *alloc_inode = ((void*)0);
 struct buffer_head *alloc_bh = ((void*)0);
 struct buffer_head *blk_bh = ((void*)0);
 struct ocfs2_refcount_tree *ref_tree;
 int credits = OCFS2_REFCOUNT_TREE_REMOVE_CREDITS;
 u64 blk = 0, bg_blkno = 0, ref_blkno = le64_to_cpu(di->i_refcount_loc);
 u16 bit = 0;

 if (!ocfs2_is_refcount_inode(inode))
  return 0;

 BUG_ON(!ref_blkno);
 ret = ocfs2_lock_refcount_tree(osb, ref_blkno, 1, &ref_tree, &blk_bh);
 if (ret) {
  mlog_errno(ret);
  return ret;
 }

 rb = (struct ocfs2_refcount_block *)blk_bh->b_data;





 if (le32_to_cpu(rb->rf_count) == 1) {
  blk = le64_to_cpu(rb->rf_blkno);
  bit = le16_to_cpu(rb->rf_suballoc_bit);
  if (rb->rf_suballoc_loc)
   bg_blkno = le64_to_cpu(rb->rf_suballoc_loc);
  else
   bg_blkno = ocfs2_which_suballoc_group(blk, bit);

  alloc_inode = ocfs2_get_system_file_inode(osb,
     EXTENT_ALLOC_SYSTEM_INODE,
     le16_to_cpu(rb->rf_suballoc_slot));
  if (!alloc_inode) {
   ret = -ENOMEM;
   mlog_errno(ret);
   goto out;
  }
  inode_lock(alloc_inode);

  ret = ocfs2_inode_lock(alloc_inode, &alloc_bh, 1);
  if (ret) {
   mlog_errno(ret);
   goto out_mutex;
  }

  credits += OCFS2_SUBALLOC_FREE;
 }

 handle = ocfs2_start_trans(osb, credits);
 if (IS_ERR(handle)) {
  ret = PTR_ERR(handle);
  mlog_errno(ret);
  goto out_unlock;
 }

 ret = ocfs2_journal_access_di(handle, INODE_CACHE(inode), di_bh,
          OCFS2_JOURNAL_ACCESS_WRITE);
 if (ret) {
  mlog_errno(ret);
  goto out_commit;
 }

 ret = ocfs2_journal_access_rb(handle, &ref_tree->rf_ci, blk_bh,
          OCFS2_JOURNAL_ACCESS_WRITE);
 if (ret) {
  mlog_errno(ret);
  goto out_commit;
 }

 spin_lock(&oi->ip_lock);
 oi->ip_dyn_features &= ~OCFS2_HAS_REFCOUNT_FL;
 di->i_dyn_features = cpu_to_le16(oi->ip_dyn_features);
 di->i_refcount_loc = 0;
 spin_unlock(&oi->ip_lock);
 ocfs2_journal_dirty(handle, di_bh);

 le32_add_cpu(&rb->rf_count , -1);
 ocfs2_journal_dirty(handle, blk_bh);

 if (!rb->rf_count) {
  delete_tree = 1;
  ocfs2_erase_refcount_tree_from_list(osb, ref_tree);
  ret = ocfs2_free_suballoc_bits(handle, alloc_inode,
            alloc_bh, bit, bg_blkno, 1);
  if (ret)
   mlog_errno(ret);
 }

out_commit:
 ocfs2_commit_trans(osb, handle);
out_unlock:
 if (alloc_inode) {
  ocfs2_inode_unlock(alloc_inode, 1);
  brelse(alloc_bh);
 }
out_mutex:
 if (alloc_inode) {
  inode_unlock(alloc_inode);
  iput(alloc_inode);
 }
out:
 ocfs2_unlock_refcount_tree(osb, ref_tree, 1);
 if (delete_tree)
  ocfs2_refcount_tree_put(ref_tree);
 brelse(blk_bh);

 return ret;
}
