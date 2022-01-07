
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ocfs2_super {int dummy; } ;
struct ocfs2_post_refcount {int (* func ) (struct inode*,int *,int ) ;int para; scalar_t__ credits; } ;
struct ocfs2_extent_tree {int et_root_el; } ;
struct ocfs2_caching_info {int dummy; } ;
struct ocfs2_cached_dealloc_ctxt {int dummy; } ;
struct ocfs2_alloc_context {int dummy; } ;
struct inode {int i_sb; } ;
struct buffer_head {int dummy; } ;
typedef int handle_t ;


 scalar_t__ IS_ERR (int *) ;
 struct ocfs2_super* OCFS2_SB (int ) ;
 int PTR_ERR (int *) ;
 int __ocfs2_increase_refcount (int *,struct ocfs2_caching_info*,struct buffer_head*,int ,int ,int ,struct ocfs2_alloc_context*,struct ocfs2_cached_dealloc_ctxt*) ;
 int mlog_errno (int) ;
 int ocfs2_calc_refcount_meta_credits (int ,struct ocfs2_caching_info*,struct buffer_head*,int ,int ,int*,int*) ;
 int ocfs2_commit_trans (struct ocfs2_super*,int *) ;
 int ocfs2_extend_meta_needed (int ) ;
 int ocfs2_free_alloc_context (struct ocfs2_alloc_context*) ;
 int ocfs2_mark_extent_refcounted (struct inode*,struct ocfs2_extent_tree*,int *,int ,int ,int ,struct ocfs2_alloc_context*,struct ocfs2_cached_dealloc_ctxt*) ;
 int ocfs2_reserve_new_metadata_blocks (struct ocfs2_super*,int,struct ocfs2_alloc_context**) ;
 int * ocfs2_start_trans (struct ocfs2_super*,int) ;
 int stub1 (struct inode*,int *,int ) ;
 int trace_ocfs2_add_refcount_flag (int,int) ;

int ocfs2_add_refcount_flag(struct inode *inode,
       struct ocfs2_extent_tree *data_et,
       struct ocfs2_caching_info *ref_ci,
       struct buffer_head *ref_root_bh,
       u32 cpos, u32 p_cluster, u32 num_clusters,
       struct ocfs2_cached_dealloc_ctxt *dealloc,
       struct ocfs2_post_refcount *post)
{
 int ret;
 handle_t *handle;
 int credits = 1, ref_blocks = 0;
 struct ocfs2_super *osb = OCFS2_SB(inode->i_sb);
 struct ocfs2_alloc_context *meta_ac = ((void*)0);


 ref_blocks = ocfs2_extend_meta_needed(data_et->et_root_el);

 ret = ocfs2_calc_refcount_meta_credits(inode->i_sb,
            ref_ci, ref_root_bh,
            p_cluster, num_clusters,
            &ref_blocks, &credits);
 if (ret) {
  mlog_errno(ret);
  goto out;
 }

 trace_ocfs2_add_refcount_flag(ref_blocks, credits);

 if (ref_blocks) {
  ret = ocfs2_reserve_new_metadata_blocks(osb,
       ref_blocks, &meta_ac);
  if (ret) {
   mlog_errno(ret);
   goto out;
  }
 }

 if (post)
  credits += post->credits;

 handle = ocfs2_start_trans(osb, credits);
 if (IS_ERR(handle)) {
  ret = PTR_ERR(handle);
  mlog_errno(ret);
  goto out;
 }

 ret = ocfs2_mark_extent_refcounted(inode, data_et, handle,
        cpos, num_clusters, p_cluster,
        meta_ac, dealloc);
 if (ret) {
  mlog_errno(ret);
  goto out_commit;
 }

 ret = __ocfs2_increase_refcount(handle, ref_ci, ref_root_bh,
     p_cluster, num_clusters, 0,
     meta_ac, dealloc);
 if (ret) {
  mlog_errno(ret);
  goto out_commit;
 }

 if (post && post->func) {
  ret = post->func(inode, handle, post->para);
  if (ret)
   mlog_errno(ret);
 }

out_commit:
 ocfs2_commit_trans(osb, handle);
out:
 if (meta_ac)
  ocfs2_free_alloc_context(meta_ac);
 return ret;
}
