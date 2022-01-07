
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef unsigned int u64 ;
typedef unsigned int u32 ;
struct super_block {int dummy; } ;
struct ocfs2_super {int dummy; } ;
struct ocfs2_refcount_rec {int r_refcount; int r_clusters; int r_cpos; } ;
struct ocfs2_cow_context {scalar_t__ get_clusters; int * meta_ac; int * data_ac; int inode; TYPE_2__* post_refcount; int dealloc; int ref_root_bh; int data_et; scalar_t__ extra_credits; TYPE_1__* ref_tree; } ;
struct ocfs2_caching_info {int dummy; } ;
struct buffer_head {int dummy; } ;
typedef int handle_t ;
struct TYPE_4__ {int (* func ) (int ,int *,int ) ;int para; scalar_t__ credits; } ;
struct TYPE_3__ {struct ocfs2_caching_info rf_ci; } ;


 int BUG_ON (int) ;
 scalar_t__ IS_ERR (int *) ;
 struct ocfs2_super* OCFS2_SB (struct super_block*) ;
 int PTR_ERR (int *) ;
 int __ocfs2_claim_clusters (int *,int *,int,unsigned int,unsigned int*,unsigned int*) ;
 int __ocfs2_decrease_refcount (int *,struct ocfs2_caching_info*,int ,unsigned int,unsigned int,int *,int *,int) ;
 int brelse (struct buffer_head*) ;
 int le32_to_cpu (int ) ;
 scalar_t__ le64_to_cpu (int ) ;
 unsigned int min (unsigned int,scalar_t__) ;
 int mlog_errno (int) ;
 int ocfs2_clear_ext_refcount (int *,int *,unsigned int,unsigned int,unsigned int,unsigned int,int *,int *) ;
 int ocfs2_commit_trans (struct ocfs2_super*,int *) ;
 int ocfs2_cow_sync_writeback (struct super_block*,int ,unsigned int,unsigned int) ;
 scalar_t__ ocfs2_di_get_clusters ;
 int ocfs2_free_alloc_context (int *) ;
 int ocfs2_get_refcount_rec (struct ocfs2_caching_info*,int ,unsigned int,unsigned int,struct ocfs2_refcount_rec*,int*,struct buffer_head**) ;
 int ocfs2_lock_refcount_allocators (struct super_block*,unsigned int,unsigned int,int *,struct ocfs2_caching_info*,int ,int **,int **,int*) ;
 int ocfs2_replace_clusters (int *,struct ocfs2_cow_context*,unsigned int,unsigned int,unsigned int,unsigned int,unsigned int) ;
 int * ocfs2_start_trans (struct ocfs2_super*,int) ;
 int stub1 (int ,int *,int ) ;
 int trace_ocfs2_make_clusters_writable (unsigned int,unsigned int,unsigned int,unsigned int) ;

__attribute__((used)) static int ocfs2_make_clusters_writable(struct super_block *sb,
     struct ocfs2_cow_context *context,
     u32 cpos, u32 p_cluster,
     u32 num_clusters, unsigned int e_flags)
{
 int ret, delete, index, credits = 0;
 u32 new_bit, new_len, orig_num_clusters;
 unsigned int set_len;
 struct ocfs2_super *osb = OCFS2_SB(sb);
 handle_t *handle;
 struct buffer_head *ref_leaf_bh = ((void*)0);
 struct ocfs2_caching_info *ref_ci = &context->ref_tree->rf_ci;
 struct ocfs2_refcount_rec rec;

 trace_ocfs2_make_clusters_writable(cpos, p_cluster,
        num_clusters, e_flags);

 ret = ocfs2_lock_refcount_allocators(sb, p_cluster, num_clusters,
          &context->data_et,
          ref_ci,
          context->ref_root_bh,
          &context->meta_ac,
          &context->data_ac, &credits);
 if (ret) {
  mlog_errno(ret);
  return ret;
 }

 if (context->post_refcount)
  credits += context->post_refcount->credits;

 credits += context->extra_credits;
 handle = ocfs2_start_trans(osb, credits);
 if (IS_ERR(handle)) {
  ret = PTR_ERR(handle);
  mlog_errno(ret);
  goto out;
 }

 orig_num_clusters = num_clusters;

 while (num_clusters) {
  ret = ocfs2_get_refcount_rec(ref_ci, context->ref_root_bh,
          p_cluster, num_clusters,
          &rec, &index, &ref_leaf_bh);
  if (ret) {
   mlog_errno(ret);
   goto out_commit;
  }

  BUG_ON(!rec.r_refcount);
  set_len = min((u64)p_cluster + num_clusters,
         le64_to_cpu(rec.r_cpos) +
         le32_to_cpu(rec.r_clusters)) - p_cluster;
  if (le32_to_cpu(rec.r_refcount) == 1) {
   delete = 0;
   ret = ocfs2_clear_ext_refcount(handle,
             &context->data_et,
             cpos, p_cluster,
             set_len, e_flags,
             context->meta_ac,
             &context->dealloc);
   if (ret) {
    mlog_errno(ret);
    goto out_commit;
   }
  } else {
   delete = 1;

   ret = __ocfs2_claim_clusters(handle,
           context->data_ac,
           1, set_len,
           &new_bit, &new_len);
   if (ret) {
    mlog_errno(ret);
    goto out_commit;
   }

   ret = ocfs2_replace_clusters(handle, context,
           cpos, p_cluster, new_bit,
           new_len, e_flags);
   if (ret) {
    mlog_errno(ret);
    goto out_commit;
   }
   set_len = new_len;
  }

  ret = __ocfs2_decrease_refcount(handle, ref_ci,
      context->ref_root_bh,
      p_cluster, set_len,
      context->meta_ac,
      &context->dealloc, delete);
  if (ret) {
   mlog_errno(ret);
   goto out_commit;
  }

  cpos += set_len;
  p_cluster += set_len;
  num_clusters -= set_len;
  brelse(ref_leaf_bh);
  ref_leaf_bh = ((void*)0);
 }


 if (context->post_refcount && context->post_refcount->func) {
  ret = context->post_refcount->func(context->inode, handle,
      context->post_refcount->para);
  if (ret) {
   mlog_errno(ret);
   goto out_commit;
  }
 }





 if (context->get_clusters == ocfs2_di_get_clusters) {
  ret = ocfs2_cow_sync_writeback(sb, context->inode, cpos,
            orig_num_clusters);
  if (ret)
   mlog_errno(ret);
 }

out_commit:
 ocfs2_commit_trans(osb, handle);

out:
 if (context->data_ac) {
  ocfs2_free_alloc_context(context->data_ac);
  context->data_ac = ((void*)0);
 }
 if (context->meta_ac) {
  ocfs2_free_alloc_context(context->meta_ac);
  context->meta_ac = ((void*)0);
 }
 brelse(ref_leaf_bh);

 return ret;
}
