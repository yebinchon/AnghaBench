
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct super_block {int dummy; } ;
struct ocfs2_extent_tree {int et_root_el; } ;
struct ocfs2_caching_info {int dummy; } ;
struct ocfs2_alloc_context {int dummy; } ;
struct buffer_head {int dummy; } ;


 int OCFS2_SB (struct super_block*) ;
 int mlog_errno (int) ;
 scalar_t__ ocfs2_calc_extend_credits (struct super_block*,int ) ;
 int ocfs2_calc_refcount_meta_credits (struct super_block*,struct ocfs2_caching_info*,struct buffer_head*,int,int,int*,int*) ;
 int ocfs2_extend_meta_needed (int ) ;
 int ocfs2_free_alloc_context (struct ocfs2_alloc_context*) ;
 int ocfs2_num_free_extents (struct ocfs2_extent_tree*) ;
 int ocfs2_reserve_clusters (int ,int,struct ocfs2_alloc_context**) ;
 int ocfs2_reserve_new_metadata_blocks (int ,int,struct ocfs2_alloc_context**) ;
 int trace_ocfs2_lock_refcount_allocators (int,int) ;

__attribute__((used)) static int ocfs2_lock_refcount_allocators(struct super_block *sb,
     u32 p_cluster, u32 num_clusters,
     struct ocfs2_extent_tree *et,
     struct ocfs2_caching_info *ref_ci,
     struct buffer_head *ref_root_bh,
     struct ocfs2_alloc_context **meta_ac,
     struct ocfs2_alloc_context **data_ac,
     int *credits)
{
 int ret = 0, meta_add = 0;
 int num_free_extents = ocfs2_num_free_extents(et);

 if (num_free_extents < 0) {
  ret = num_free_extents;
  mlog_errno(ret);
  goto out;
 }

 if (num_free_extents < num_clusters + 2)
  meta_add =
   ocfs2_extend_meta_needed(et->et_root_el);

 *credits += ocfs2_calc_extend_credits(sb, et->et_root_el);

 ret = ocfs2_calc_refcount_meta_credits(sb, ref_ci, ref_root_bh,
            p_cluster, num_clusters,
            &meta_add, credits);
 if (ret) {
  mlog_errno(ret);
  goto out;
 }

 trace_ocfs2_lock_refcount_allocators(meta_add, *credits);
 ret = ocfs2_reserve_new_metadata_blocks(OCFS2_SB(sb), meta_add,
      meta_ac);
 if (ret) {
  mlog_errno(ret);
  goto out;
 }

 if (data_ac) {
  ret = ocfs2_reserve_clusters(OCFS2_SB(sb), num_clusters,
          data_ac);
  if (ret)
   mlog_errno(ret);
 }

out:
 if (ret) {
  if (*meta_ac) {
   ocfs2_free_alloc_context(*meta_ac);
   *meta_ac = ((void*)0);
  }
 }

 return ret;
}
