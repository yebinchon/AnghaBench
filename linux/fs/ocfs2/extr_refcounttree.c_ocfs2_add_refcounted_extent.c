
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ocfs2_super {int sb; } ;
struct ocfs2_extent_tree {int dummy; } ;
struct ocfs2_caching_info {int dummy; } ;
struct ocfs2_cached_dealloc_ctxt {int dummy; } ;
struct ocfs2_alloc_context {int dummy; } ;
struct inode {int i_sb; } ;
struct buffer_head {int dummy; } ;
typedef int handle_t ;


 scalar_t__ IS_ERR (int *) ;
 struct ocfs2_super* OCFS2_SB (int ) ;
 int PTR_ERR (int *) ;
 int dquot_alloc_space_nodirty (struct inode*,int ) ;
 int mlog_errno (int) ;
 int ocfs2_clusters_to_blocks (int ,int ) ;
 int ocfs2_clusters_to_bytes (int ,int ) ;
 int ocfs2_commit_trans (struct ocfs2_super*,int *) ;
 int ocfs2_free_alloc_context (struct ocfs2_alloc_context*) ;
 int ocfs2_increase_refcount (int *,struct ocfs2_caching_info*,struct buffer_head*,int ,int ,struct ocfs2_alloc_context*,struct ocfs2_cached_dealloc_ctxt*) ;
 int ocfs2_insert_extent (int *,struct ocfs2_extent_tree*,int ,int ,int ,unsigned int,struct ocfs2_alloc_context*) ;
 int ocfs2_lock_refcount_allocators (int ,int ,int ,struct ocfs2_extent_tree*,struct ocfs2_caching_info*,struct buffer_head*,struct ocfs2_alloc_context**,int *,int*) ;
 int * ocfs2_start_trans (struct ocfs2_super*,int) ;

__attribute__((used)) static int ocfs2_add_refcounted_extent(struct inode *inode,
       struct ocfs2_extent_tree *et,
       struct ocfs2_caching_info *ref_ci,
       struct buffer_head *ref_root_bh,
       u32 cpos, u32 p_cluster, u32 num_clusters,
       unsigned int ext_flags,
       struct ocfs2_cached_dealloc_ctxt *dealloc)
{
 int ret;
 handle_t *handle;
 int credits = 0;
 struct ocfs2_super *osb = OCFS2_SB(inode->i_sb);
 struct ocfs2_alloc_context *meta_ac = ((void*)0);

 ret = ocfs2_lock_refcount_allocators(inode->i_sb,
          p_cluster, num_clusters,
          et, ref_ci,
          ref_root_bh, &meta_ac,
          ((void*)0), &credits);
 if (ret) {
  mlog_errno(ret);
  goto out;
 }

 handle = ocfs2_start_trans(osb, credits);
 if (IS_ERR(handle)) {
  ret = PTR_ERR(handle);
  mlog_errno(ret);
  goto out;
 }

 ret = ocfs2_insert_extent(handle, et, cpos,
   ocfs2_clusters_to_blocks(inode->i_sb, p_cluster),
   num_clusters, ext_flags, meta_ac);
 if (ret) {
  mlog_errno(ret);
  goto out_commit;
 }

 ret = ocfs2_increase_refcount(handle, ref_ci, ref_root_bh,
          p_cluster, num_clusters,
          meta_ac, dealloc);
 if (ret) {
  mlog_errno(ret);
  goto out_commit;
 }

 ret = dquot_alloc_space_nodirty(inode,
  ocfs2_clusters_to_bytes(osb->sb, num_clusters));
 if (ret)
  mlog_errno(ret);

out_commit:
 ocfs2_commit_trans(osb, handle);
out:
 if (meta_ac)
  ocfs2_free_alloc_context(meta_ac);
 return ret;
}
