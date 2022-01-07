
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
typedef scalar_t__ u32 ;
struct ocfs2_super {int sb; struct inode* osb_tl_inode; } ;
struct ocfs2_refcount_tree {int dummy; } ;
struct ocfs2_move_extents_context {int partial; struct ocfs2_alloc_context* meta_ac; struct ocfs2_alloc_context* data_ac; struct inode* inode; TYPE_1__* range; int et; int refcount_loc; } ;
struct ocfs2_alloc_context {scalar_t__ ac_which; int ac_bh; int ac_inode; } ;
struct inode {int i_sb; } ;
typedef int handle_t ;
struct TYPE_2__ {int me_flags; } ;


 int BUG_ON (int) ;
 int ENOSPC ;
 scalar_t__ IS_ERR (int *) ;
 scalar_t__ OCFS2_AC_USE_LOCAL ;
 int OCFS2_EXT_REFCOUNTED ;
 int OCFS2_MOVE_EXT_FL_COMPLETE ;
 struct ocfs2_super* OCFS2_SB (int ) ;
 int PTR_ERR (int *) ;
 int __ocfs2_claim_clusters (int *,struct ocfs2_alloc_context*,int,scalar_t__,scalar_t__*,scalar_t__*) ;
 int __ocfs2_flush_truncate_log (struct ocfs2_super*) ;
 int __ocfs2_move_extent (int *,struct ocfs2_move_extents_context*,scalar_t__,scalar_t__,scalar_t__,scalar_t__,int) ;
 int inode_lock (struct inode*) ;
 int inode_unlock (struct inode*) ;
 int mlog (int ,char*,scalar_t__,scalar_t__,...) ;
 int mlog_errno (int) ;
 int ocfs2_clusters_to_blocks (int ,scalar_t__) ;
 int ocfs2_commit_trans (struct ocfs2_super*,int *) ;
 int ocfs2_cow_sync_writeback (int ,struct inode*,scalar_t__,scalar_t__) ;
 int ocfs2_free_alloc_context (struct ocfs2_alloc_context*) ;
 int ocfs2_free_clusters (int *,int ,int ,int ,scalar_t__) ;
 int ocfs2_free_local_alloc_bits (struct ocfs2_super*,int *,struct ocfs2_alloc_context*,scalar_t__,scalar_t__) ;
 int ocfs2_is_refcount_inode (struct inode*) ;
 int ocfs2_lock_meta_allocator_move_extents (struct inode*,int *,scalar_t__,int,struct ocfs2_alloc_context**,int,int*) ;
 int ocfs2_lock_refcount_tree (struct ocfs2_super*,int ,int,struct ocfs2_refcount_tree**,int *) ;
 int ocfs2_prepare_refcount_change_for_del (struct inode*,int ,int ,scalar_t__,int*,int*) ;
 int ocfs2_reserve_clusters (struct ocfs2_super*,scalar_t__,struct ocfs2_alloc_context**) ;
 int * ocfs2_start_trans (struct ocfs2_super*,int) ;
 scalar_t__ ocfs2_truncate_log_needs_flush (struct ocfs2_super*) ;
 int ocfs2_unlock_refcount_tree (struct ocfs2_super*,struct ocfs2_refcount_tree*,int) ;

__attribute__((used)) static int ocfs2_defrag_extent(struct ocfs2_move_extents_context *context,
          u32 cpos, u32 phys_cpos, u32 *len, int ext_flags)
{
 int ret, credits = 0, extra_blocks = 0, partial = context->partial;
 handle_t *handle;
 struct inode *inode = context->inode;
 struct ocfs2_super *osb = OCFS2_SB(inode->i_sb);
 struct inode *tl_inode = osb->osb_tl_inode;
 struct ocfs2_refcount_tree *ref_tree = ((void*)0);
 u32 new_phys_cpos, new_len;
 u64 phys_blkno = ocfs2_clusters_to_blocks(inode->i_sb, phys_cpos);
 int need_free = 0;

 if ((ext_flags & OCFS2_EXT_REFCOUNTED) && *len) {
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
       *len,
       &credits,
       &extra_blocks);
  if (ret) {
   mlog_errno(ret);
   goto out;
  }
 }

 ret = ocfs2_lock_meta_allocator_move_extents(inode, &context->et,
      *len, 1,
      &context->meta_ac,
      extra_blocks, &credits);
 if (ret) {
  mlog_errno(ret);
  goto out;
 }
 inode_lock(tl_inode);

 if (ocfs2_truncate_log_needs_flush(osb)) {
  ret = __ocfs2_flush_truncate_log(osb);
  if (ret < 0) {
   mlog_errno(ret);
   goto out_unlock_mutex;
  }
 }
 ret = ocfs2_reserve_clusters(osb, *len, &context->data_ac);
 if (ret) {
  mlog_errno(ret);
  goto out_unlock_mutex;
 }

 handle = ocfs2_start_trans(osb, credits);
 if (IS_ERR(handle)) {
  ret = PTR_ERR(handle);
  mlog_errno(ret);
  goto out_unlock_mutex;
 }

 ret = __ocfs2_claim_clusters(handle, context->data_ac, 1, *len,
         &new_phys_cpos, &new_len);
 if (ret) {
  mlog_errno(ret);
  goto out_commit;
 }







 if (new_len != *len) {
  mlog(0, "len_claimed: %u, len: %u\n", new_len, *len);
  if (!partial) {
   context->range->me_flags &= ~OCFS2_MOVE_EXT_FL_COMPLETE;
   ret = -ENOSPC;
   need_free = 1;
   goto out_commit;
  }
 }

 mlog(0, "cpos: %u, phys_cpos: %u, new_phys_cpos: %u\n", cpos,
      phys_cpos, new_phys_cpos);

 ret = __ocfs2_move_extent(handle, context, cpos, new_len, phys_cpos,
      new_phys_cpos, ext_flags);
 if (ret)
  mlog_errno(ret);

 if (partial && (new_len != *len))
  *len = new_len;





 ret = ocfs2_cow_sync_writeback(inode->i_sb, context->inode, cpos, *len);
 if (ret)
  mlog_errno(ret);

out_commit:
 if (need_free && context->data_ac) {
  struct ocfs2_alloc_context *data_ac = context->data_ac;

  if (context->data_ac->ac_which == OCFS2_AC_USE_LOCAL)
   ocfs2_free_local_alloc_bits(osb, handle, data_ac,
     new_phys_cpos, new_len);
  else
   ocfs2_free_clusters(handle,
     data_ac->ac_inode,
     data_ac->ac_bh,
     ocfs2_clusters_to_blocks(osb->sb, new_phys_cpos),
     new_len);
 }

 ocfs2_commit_trans(osb, handle);

out_unlock_mutex:
 inode_unlock(tl_inode);

 if (context->data_ac) {
  ocfs2_free_alloc_context(context->data_ac);
  context->data_ac = ((void*)0);
 }

 if (context->meta_ac) {
  ocfs2_free_alloc_context(context->meta_ac);
  context->meta_ac = ((void*)0);
 }

out:
 if (ref_tree)
  ocfs2_unlock_refcount_tree(osb, ref_tree, 1);

 return ret;
}
