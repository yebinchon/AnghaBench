
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u64 ;
typedef scalar_t__ u32 ;
struct super_block {int dummy; } ;
struct ocfs2_refcount_rec {scalar_t__ r_clusters; int r_cpos; scalar_t__ r_refcount; } ;
struct TYPE_2__ {int rl_count; int rl_used; } ;
struct ocfs2_refcount_block {scalar_t__ rf_flags; TYPE_1__ rf_records; } ;
struct ocfs2_extent_tree {int et_root_el; } ;
struct ocfs2_caching_info {int dummy; } ;
struct buffer_head {scalar_t__ b_data; } ;


 scalar_t__ OCFS2_EXPAND_REFCOUNT_TREE_CREDITS ;
 int OCFS2_REFCOUNT_TREE_FL ;
 int brelse (struct buffer_head*) ;
 int get_bh (struct buffer_head*) ;
 scalar_t__ le16_to_cpu (int ) ;
 int le32_to_cpu (scalar_t__) ;
 scalar_t__ le64_to_cpu (int ) ;
 scalar_t__ min (scalar_t__,scalar_t__) ;
 int mlog_errno (int) ;
 scalar_t__ ocfs2_calc_extend_credits (struct super_block*,int ) ;
 scalar_t__ ocfs2_extend_meta_needed (int ) ;
 int ocfs2_get_refcount_rec (struct ocfs2_caching_info*,struct buffer_head*,scalar_t__,scalar_t__,struct ocfs2_refcount_rec*,int*,struct buffer_head**) ;
 int ocfs2_init_refcount_extent_tree (struct ocfs2_extent_tree*,struct ocfs2_caching_info*,struct buffer_head*) ;
 int trace_ocfs2_calc_refcount_meta_credits (unsigned long long,scalar_t__,int,int) ;
 int trace_ocfs2_calc_refcount_meta_credits_iterate (int,unsigned long long,scalar_t__,unsigned long long,int,int,int) ;

__attribute__((used)) static int ocfs2_calc_refcount_meta_credits(struct super_block *sb,
         struct ocfs2_caching_info *ci,
         struct buffer_head *ref_root_bh,
         u64 start_cpos,
         u32 clusters,
         int *meta_add,
         int *credits)
{
 int ret = 0, index, ref_blocks = 0, recs_add = 0;
 u64 cpos = start_cpos;
 struct ocfs2_refcount_block *rb;
 struct ocfs2_refcount_rec rec;
 struct buffer_head *ref_leaf_bh = ((void*)0), *prev_bh = ((void*)0);
 u32 len;

 while (clusters) {
  ret = ocfs2_get_refcount_rec(ci, ref_root_bh,
          cpos, clusters, &rec,
          &index, &ref_leaf_bh);
  if (ret) {
   mlog_errno(ret);
   goto out;
  }

  if (ref_leaf_bh != prev_bh) {




   if (prev_bh) {
    rb = (struct ocfs2_refcount_block *)
       prev_bh->b_data;

    if (le16_to_cpu(rb->rf_records.rl_used) +
        recs_add >
        le16_to_cpu(rb->rf_records.rl_count))
     ref_blocks++;
   }

   recs_add = 0;
   *credits += 1;
   brelse(prev_bh);
   prev_bh = ref_leaf_bh;
   get_bh(prev_bh);
  }

  trace_ocfs2_calc_refcount_meta_credits_iterate(
    recs_add, (unsigned long long)cpos, clusters,
    (unsigned long long)le64_to_cpu(rec.r_cpos),
    le32_to_cpu(rec.r_clusters),
    le32_to_cpu(rec.r_refcount), index);

  len = min((u64)cpos + clusters, le64_to_cpu(rec.r_cpos) +
     le32_to_cpu(rec.r_clusters)) - cpos;
  if (rec.r_refcount) {
   recs_add += 2;

   if (cpos == start_cpos &&
       cpos != le64_to_cpu(rec.r_cpos))
    recs_add++;


   if (cpos + clusters < le64_to_cpu(rec.r_cpos) +
       le32_to_cpu(rec.r_clusters))
    recs_add++;
  } else
   recs_add++;

  brelse(ref_leaf_bh);
  ref_leaf_bh = ((void*)0);
  clusters -= len;
  cpos += len;
 }

 if (prev_bh) {
  rb = (struct ocfs2_refcount_block *)prev_bh->b_data;

  if (le16_to_cpu(rb->rf_records.rl_used) + recs_add >
      le16_to_cpu(rb->rf_records.rl_count))
   ref_blocks++;

  *credits += 1;
 }

 if (!ref_blocks)
  goto out;

 *meta_add += ref_blocks;
 *credits += ref_blocks;
 rb = (struct ocfs2_refcount_block *)ref_root_bh->b_data;
 if (le32_to_cpu(rb->rf_flags) & OCFS2_REFCOUNT_TREE_FL) {
  struct ocfs2_extent_tree et;

  ocfs2_init_refcount_extent_tree(&et, ci, ref_root_bh);
  *meta_add += ocfs2_extend_meta_needed(et.et_root_el);
  *credits += ocfs2_calc_extend_credits(sb,
            et.et_root_el);
 } else {
  *credits += OCFS2_EXPAND_REFCOUNT_TREE_CREDITS;
  *meta_add += 1;
 }

out:

 trace_ocfs2_calc_refcount_meta_credits(
  (unsigned long long)start_cpos, clusters,
  *meta_add, *credits);
 brelse(ref_leaf_bh);
 brelse(prev_bh);
 return ret;
}
