
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ocfs2_refcount_rec {int r_refcount; } ;
struct ocfs2_refcount_list {int rl_used; struct ocfs2_refcount_rec* rl_recs; } ;
struct ocfs2_refcount_block {struct ocfs2_refcount_list rf_records; } ;
struct ocfs2_caching_info {int dummy; } ;
struct buffer_head {scalar_t__ b_data; } ;
typedef int handle_t ;


 int OCFS2_JOURNAL_ACCESS_WRITE ;
 int le16_add_cpu (int *,int) ;
 int le16_to_cpu (int ) ;
 int le32_add_cpu (int *,int) ;
 int le32_to_cpu (int ) ;
 int memmove (struct ocfs2_refcount_rec*,struct ocfs2_refcount_rec*,int) ;
 int memset (struct ocfs2_refcount_rec*,int ,int) ;
 int mlog_errno (int) ;
 int ocfs2_journal_access_rb (int *,struct ocfs2_caching_info*,struct buffer_head*,int ) ;
 int ocfs2_journal_dirty (int *,struct buffer_head*) ;
 scalar_t__ ocfs2_metadata_cache_owner (struct ocfs2_caching_info*) ;
 int ocfs2_refcount_rec_merge (struct ocfs2_refcount_block*,int) ;
 int trace_ocfs2_change_refcount_rec (unsigned long long,int,int ,int) ;

__attribute__((used)) static int ocfs2_change_refcount_rec(handle_t *handle,
         struct ocfs2_caching_info *ci,
         struct buffer_head *ref_leaf_bh,
         int index, int merge, int change)
{
 int ret;
 struct ocfs2_refcount_block *rb =
   (struct ocfs2_refcount_block *)ref_leaf_bh->b_data;
 struct ocfs2_refcount_list *rl = &rb->rf_records;
 struct ocfs2_refcount_rec *rec = &rl->rl_recs[index];

 ret = ocfs2_journal_access_rb(handle, ci, ref_leaf_bh,
          OCFS2_JOURNAL_ACCESS_WRITE);
 if (ret) {
  mlog_errno(ret);
  goto out;
 }

 trace_ocfs2_change_refcount_rec(
  (unsigned long long)ocfs2_metadata_cache_owner(ci),
  index, le32_to_cpu(rec->r_refcount), change);
 le32_add_cpu(&rec->r_refcount, change);

 if (!rec->r_refcount) {
  if (index != le16_to_cpu(rl->rl_used) - 1) {
   memmove(rec, rec + 1,
    (le16_to_cpu(rl->rl_used) - index - 1) *
    sizeof(struct ocfs2_refcount_rec));
   memset(&rl->rl_recs[le16_to_cpu(rl->rl_used) - 1],
          0, sizeof(struct ocfs2_refcount_rec));
  }

  le16_add_cpu(&rl->rl_used, -1);
 } else if (merge)
  ocfs2_refcount_rec_merge(rb, index);

 ocfs2_journal_dirty(handle, ref_leaf_bh);
out:
 return ret;
}
