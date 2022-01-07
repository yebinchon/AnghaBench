
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ u64 ;
typedef int u32 ;
struct TYPE_4__ {int xt_clusters; } ;
struct TYPE_5__ {TYPE_1__ xb_root; } ;
struct ocfs2_xattr_block {TYPE_2__ xb_attrs; } ;
struct ocfs2_super {int sb; struct inode* osb_tl_inode; } ;
struct ocfs2_extent_tree {int dummy; } ;
struct ocfs2_cached_dealloc_ctxt {int dummy; } ;
struct ocfs2_alloc_context {int dummy; } ;
struct inode {int i_sb; } ;
struct buffer_head {scalar_t__ b_data; } ;
typedef int handle_t ;
struct TYPE_6__ {scalar_t__ ip_blkno; } ;


 int ENOMEM ;
 int INODE_CACHE (struct inode*) ;
 scalar_t__ IS_ERR (int *) ;
 TYPE_3__* OCFS2_I (struct inode*) ;
 int OCFS2_JOURNAL_ACCESS_WRITE ;
 struct ocfs2_super* OCFS2_SB (int ) ;
 int __ocfs2_flush_truncate_log (struct ocfs2_super*) ;
 int inode_lock (struct inode*) ;
 int inode_unlock (struct inode*) ;
 int le32_add_cpu (int *,int ) ;
 int mlog_errno (int) ;
 int ocfs2_commit_trans (struct ocfs2_super*,int *) ;
 int ocfs2_delete_xattr_in_bucket ;
 int ocfs2_free_alloc_context (struct ocfs2_alloc_context*) ;
 int ocfs2_init_dealloc_ctxt (struct ocfs2_cached_dealloc_ctxt*) ;
 int ocfs2_init_xattr_tree_extent_tree (struct ocfs2_extent_tree*,int ,struct buffer_head*) ;
 int ocfs2_iterate_xattr_buckets (struct inode*,scalar_t__,int ,int ,void*) ;
 int ocfs2_journal_access_xb (int *,int ,struct buffer_head*,int ) ;
 int ocfs2_journal_dirty (int *,struct buffer_head*) ;
 int ocfs2_lock_allocators (struct inode*,struct ocfs2_extent_tree*,int ,int,int *,struct ocfs2_alloc_context**) ;
 int ocfs2_remove_extent (int *,struct ocfs2_extent_tree*,int ,int ,struct ocfs2_alloc_context*,struct ocfs2_cached_dealloc_ctxt*) ;
 int ocfs2_remove_extent_credits (int ) ;
 int ocfs2_remove_xattr_clusters_from_cache (int ,scalar_t__,int ) ;
 int ocfs2_run_deallocs (struct ocfs2_super*,struct ocfs2_cached_dealloc_ctxt*) ;
 int ocfs2_schedule_truncate_log_flush (struct ocfs2_super*,int) ;
 int * ocfs2_start_trans (struct ocfs2_super*,int ) ;
 int ocfs2_truncate_log_append (struct ocfs2_super*,int *,scalar_t__,int ) ;
 scalar_t__ ocfs2_truncate_log_needs_flush (struct ocfs2_super*) ;
 int ocfs2_update_inode_fsync_trans (int *,struct inode*,int ) ;
 int trace_ocfs2_rm_xattr_cluster (unsigned long long,unsigned long long,int ,int ) ;

__attribute__((used)) static int ocfs2_rm_xattr_cluster(struct inode *inode,
      struct buffer_head *root_bh,
      u64 blkno,
      u32 cpos,
      u32 len,
      void *para)
{
 int ret;
 struct ocfs2_super *osb = OCFS2_SB(inode->i_sb);
 struct inode *tl_inode = osb->osb_tl_inode;
 handle_t *handle;
 struct ocfs2_xattr_block *xb =
   (struct ocfs2_xattr_block *)root_bh->b_data;
 struct ocfs2_alloc_context *meta_ac = ((void*)0);
 struct ocfs2_cached_dealloc_ctxt dealloc;
 struct ocfs2_extent_tree et;

 ret = ocfs2_iterate_xattr_buckets(inode, blkno, len,
       ocfs2_delete_xattr_in_bucket, para);
 if (ret) {
  mlog_errno(ret);
  return ret;
 }

 ocfs2_init_xattr_tree_extent_tree(&et, INODE_CACHE(inode), root_bh);

 ocfs2_init_dealloc_ctxt(&dealloc);

 trace_ocfs2_rm_xattr_cluster(
   (unsigned long long)OCFS2_I(inode)->ip_blkno,
   (unsigned long long)blkno, cpos, len);

 ocfs2_remove_xattr_clusters_from_cache(INODE_CACHE(inode), blkno,
            len);

 ret = ocfs2_lock_allocators(inode, &et, 0, 1, ((void*)0), &meta_ac);
 if (ret) {
  mlog_errno(ret);
  return ret;
 }

 inode_lock(tl_inode);

 if (ocfs2_truncate_log_needs_flush(osb)) {
  ret = __ocfs2_flush_truncate_log(osb);
  if (ret < 0) {
   mlog_errno(ret);
   goto out;
  }
 }

 handle = ocfs2_start_trans(osb, ocfs2_remove_extent_credits(osb->sb));
 if (IS_ERR(handle)) {
  ret = -ENOMEM;
  mlog_errno(ret);
  goto out;
 }

 ret = ocfs2_journal_access_xb(handle, INODE_CACHE(inode), root_bh,
          OCFS2_JOURNAL_ACCESS_WRITE);
 if (ret) {
  mlog_errno(ret);
  goto out_commit;
 }

 ret = ocfs2_remove_extent(handle, &et, cpos, len, meta_ac,
      &dealloc);
 if (ret) {
  mlog_errno(ret);
  goto out_commit;
 }

 le32_add_cpu(&xb->xb_attrs.xb_root.xt_clusters, -len);
 ocfs2_journal_dirty(handle, root_bh);

 ret = ocfs2_truncate_log_append(osb, handle, blkno, len);
 if (ret)
  mlog_errno(ret);
 ocfs2_update_inode_fsync_trans(handle, inode, 0);

out_commit:
 ocfs2_commit_trans(osb, handle);
out:
 ocfs2_schedule_truncate_log_flush(osb, 1);

 inode_unlock(tl_inode);

 if (meta_ac)
  ocfs2_free_alloc_context(meta_ac);

 ocfs2_run_deallocs(osb, &dealloc);

 return ret;
}
