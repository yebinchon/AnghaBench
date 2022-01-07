
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
typedef int u32 ;
struct ocfs2_super {struct inode* osb_tl_inode; } ;
struct ocfs2_refcount_tree {int dummy; } ;
struct ocfs2_move_extents_context {int * meta_ac; struct inode* inode; int et; int refcount_loc; TYPE_1__* range; } ;
struct ocfs2_group_desc {int bg_chain; } ;
struct inode {int i_sb; } ;
struct buffer_head {scalar_t__ b_data; } ;
typedef int handle_t ;
struct TYPE_2__ {int me_threshold; } ;


 int BUG_ON (int) ;
 int EIO ;
 int ENOSPC ;
 int GLOBAL_BITMAP_SYSTEM_INODE ;
 scalar_t__ IS_ERR (int *) ;
 int ML_ERROR ;
 int OCFS2_EXT_REFCOUNTED ;
 scalar_t__ OCFS2_INODE_UPDATE_CREDITS ;
 int OCFS2_INVALID_SLOT ;
 struct ocfs2_super* OCFS2_SB (int ) ;
 int PTR_ERR (int *) ;
 int __ocfs2_move_extent (int *,struct ocfs2_move_extents_context*,int ,int ,int ,int ,int) ;
 int brelse (struct buffer_head*) ;
 int inode_lock (struct inode*) ;
 int inode_unlock (struct inode*) ;
 int iput (struct inode*) ;
 int le16_to_cpu (int ) ;
 int mlog (int ,char*) ;
 int mlog_errno (int) ;
 int ocfs2_alloc_dinode_update_counts (struct inode*,int *,struct buffer_head*,int ,int ) ;
 int ocfs2_block_group_set_bits (int *,struct inode*,struct ocfs2_group_desc*,struct buffer_head*,int,int ) ;
 int ocfs2_blocks_to_clusters (int ,int ) ;
 int ocfs2_clusters_to_blocks (int ,int ) ;
 int ocfs2_commit_trans (struct ocfs2_super*,int *) ;
 int ocfs2_cow_sync_writeback (int ,struct inode*,int ,int ) ;
 int ocfs2_find_victim_alloc_group (struct inode*,int ,int ,int ,int*,struct buffer_head**) ;
 int ocfs2_free_alloc_context (int *) ;
 struct inode* ocfs2_get_system_file_inode (struct ocfs2_super*,int ,int ) ;
 int ocfs2_inode_lock (struct inode*,struct buffer_head**,int) ;
 int ocfs2_inode_unlock (struct inode*,int) ;
 int ocfs2_is_refcount_inode (struct inode*) ;
 int ocfs2_lock_meta_allocator_move_extents (struct inode*,int *,int ,int,int **,int,int*) ;
 int ocfs2_lock_refcount_tree (struct ocfs2_super*,int ,int,struct ocfs2_refcount_tree**,int *) ;
 int ocfs2_prepare_refcount_change_for_del (struct inode*,int ,int ,int ,int*,int*) ;
 int ocfs2_probe_alloc_group (struct inode*,struct buffer_head*,int*,int ,int ,int *) ;
 int ocfs2_rollback_alloc_dinode_counts (struct inode*,struct buffer_head*,int ,int ) ;
 int * ocfs2_start_trans (struct ocfs2_super*,int) ;
 int ocfs2_unlock_refcount_tree (struct ocfs2_super*,struct ocfs2_refcount_tree*,int) ;

__attribute__((used)) static int ocfs2_move_extent(struct ocfs2_move_extents_context *context,
        u32 cpos, u32 phys_cpos, u32 *new_phys_cpos,
        u32 len, int ext_flags)
{
 int ret, credits = 0, extra_blocks = 0, goal_bit = 0;
 handle_t *handle;
 struct inode *inode = context->inode;
 struct ocfs2_super *osb = OCFS2_SB(inode->i_sb);
 struct inode *tl_inode = osb->osb_tl_inode;
 struct inode *gb_inode = ((void*)0);
 struct buffer_head *gb_bh = ((void*)0);
 struct buffer_head *gd_bh = ((void*)0);
 struct ocfs2_group_desc *gd;
 struct ocfs2_refcount_tree *ref_tree = ((void*)0);
 u32 move_max_hop = ocfs2_blocks_to_clusters(inode->i_sb,
          context->range->me_threshold);
 u64 phys_blkno, new_phys_blkno;

 phys_blkno = ocfs2_clusters_to_blocks(inode->i_sb, phys_cpos);

 if ((ext_flags & OCFS2_EXT_REFCOUNTED) && len) {
  BUG_ON(!ocfs2_is_refcount_inode(inode));
  BUG_ON(!context->refcount_loc);

  ret = ocfs2_lock_refcount_tree(osb, context->refcount_loc, 1,
            &ref_tree, ((void*)0));
  if (ret) {
   mlog_errno(ret);
   return ret;
  }

  ret = ocfs2_prepare_refcount_change_for_del(inode,
       context->refcount_loc,
       phys_blkno,
       len,
       &credits,
       &extra_blocks);
  if (ret) {
   mlog_errno(ret);
   goto out;
  }
 }

 ret = ocfs2_lock_meta_allocator_move_extents(inode, &context->et,
      len, 1,
      &context->meta_ac,
      extra_blocks, &credits);
 if (ret) {
  mlog_errno(ret);
  goto out;
 }





 credits += OCFS2_INODE_UPDATE_CREDITS + 1;





 gb_inode = ocfs2_get_system_file_inode(osb, GLOBAL_BITMAP_SYSTEM_INODE,
            OCFS2_INVALID_SLOT);
 if (!gb_inode) {
  mlog(ML_ERROR, "unable to get global_bitmap inode\n");
  ret = -EIO;
  goto out;
 }

 inode_lock(gb_inode);

 ret = ocfs2_inode_lock(gb_inode, &gb_bh, 1);
 if (ret) {
  mlog_errno(ret);
  goto out_unlock_gb_mutex;
 }

 inode_lock(tl_inode);

 handle = ocfs2_start_trans(osb, credits);
 if (IS_ERR(handle)) {
  ret = PTR_ERR(handle);
  mlog_errno(ret);
  goto out_unlock_tl_inode;
 }

 new_phys_blkno = ocfs2_clusters_to_blocks(inode->i_sb, *new_phys_cpos);
 ret = ocfs2_find_victim_alloc_group(inode, new_phys_blkno,
         GLOBAL_BITMAP_SYSTEM_INODE,
         OCFS2_INVALID_SLOT,
         &goal_bit, &gd_bh);
 if (ret) {
  mlog_errno(ret);
  goto out_commit;
 }







 ocfs2_probe_alloc_group(inode, gd_bh, &goal_bit, len, move_max_hop,
    new_phys_cpos);
 if (!*new_phys_cpos) {
  ret = -ENOSPC;
  goto out_commit;
 }

 ret = __ocfs2_move_extent(handle, context, cpos, len, phys_cpos,
      *new_phys_cpos, ext_flags);
 if (ret) {
  mlog_errno(ret);
  goto out_commit;
 }

 gd = (struct ocfs2_group_desc *)gd_bh->b_data;
 ret = ocfs2_alloc_dinode_update_counts(gb_inode, handle, gb_bh, len,
            le16_to_cpu(gd->bg_chain));
 if (ret) {
  mlog_errno(ret);
  goto out_commit;
 }

 ret = ocfs2_block_group_set_bits(handle, gb_inode, gd, gd_bh,
      goal_bit, len);
 if (ret) {
  ocfs2_rollback_alloc_dinode_counts(gb_inode, gb_bh, len,
            le16_to_cpu(gd->bg_chain));
  mlog_errno(ret);
 }





 ret = ocfs2_cow_sync_writeback(inode->i_sb, context->inode, cpos, len);
 if (ret)
  mlog_errno(ret);

out_commit:
 ocfs2_commit_trans(osb, handle);
 brelse(gd_bh);

out_unlock_tl_inode:
 inode_unlock(tl_inode);

 ocfs2_inode_unlock(gb_inode, 1);
out_unlock_gb_mutex:
 inode_unlock(gb_inode);
 brelse(gb_bh);
 iput(gb_inode);

out:
 if (context->meta_ac) {
  ocfs2_free_alloc_context(context->meta_ac);
  context->meta_ac = ((void*)0);
 }

 if (ref_tree)
  ocfs2_unlock_refcount_tree(osb, ref_tree, 1);

 return ret;
}
