
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct ocfs2_refcount_rec {int r_cpos; } ;
struct ocfs2_refcount_block {void* rf_cpos; void* rf_flags; } ;
struct ocfs2_path {int dummy; } ;
struct ocfs2_extent_tree {int dummy; } ;
struct ocfs2_extent_list {TYPE_1__* l_recs; int l_next_free_rec; } ;
struct ocfs2_caching_info {int dummy; } ;
struct buffer_head {scalar_t__ b_data; } ;
typedef int handle_t ;
struct TYPE_2__ {void* e_cpos; } ;


 int BUG_ON (int) ;
 int ENOMEM ;
 int OCFS2_32BIT_POS_MASK ;
 int OCFS2_JOURNAL_ACCESS_WRITE ;
 int OCFS2_REFCOUNT_TREE_FL ;
 void* cpu_to_le32 (int) ;
 int le16_to_cpu (int ) ;
 int le32_to_cpu (void*) ;
 int le64_to_cpu (int ) ;
 int mlog_errno (int) ;
 int ocfs2_extend_trans (int *,int) ;
 int ocfs2_find_path (struct ocfs2_caching_info*,struct ocfs2_path*,int) ;
 int ocfs2_free_path (struct ocfs2_path*) ;
 int ocfs2_init_refcount_extent_tree (struct ocfs2_extent_tree*,struct ocfs2_caching_info*,struct buffer_head*) ;
 int ocfs2_journal_access_eb (int *,struct ocfs2_caching_info*,struct buffer_head*,int ) ;
 int ocfs2_journal_access_rb (int *,struct ocfs2_caching_info*,struct buffer_head*,int ) ;
 int ocfs2_journal_dirty (int *,struct buffer_head*) ;
 struct ocfs2_path* ocfs2_new_path_from_et (struct ocfs2_extent_tree*) ;
 struct buffer_head* path_leaf_bh (struct ocfs2_path*) ;
 struct ocfs2_extent_list* path_leaf_el (struct ocfs2_path*) ;

__attribute__((used)) static int ocfs2_adjust_refcount_rec(handle_t *handle,
         struct ocfs2_caching_info *ci,
         struct buffer_head *ref_root_bh,
         struct buffer_head *ref_leaf_bh,
         struct ocfs2_refcount_rec *rec)
{
 int ret = 0, i;
 u32 new_cpos, old_cpos;
 struct ocfs2_path *path = ((void*)0);
 struct ocfs2_extent_tree et;
 struct ocfs2_refcount_block *rb =
  (struct ocfs2_refcount_block *)ref_root_bh->b_data;
 struct ocfs2_extent_list *el;

 if (!(le32_to_cpu(rb->rf_flags) & OCFS2_REFCOUNT_TREE_FL))
  goto out;

 rb = (struct ocfs2_refcount_block *)ref_leaf_bh->b_data;
 old_cpos = le32_to_cpu(rb->rf_cpos);
 new_cpos = le64_to_cpu(rec->r_cpos) & OCFS2_32BIT_POS_MASK;
 if (old_cpos <= new_cpos)
  goto out;

 ocfs2_init_refcount_extent_tree(&et, ci, ref_root_bh);

 path = ocfs2_new_path_from_et(&et);
 if (!path) {
  ret = -ENOMEM;
  mlog_errno(ret);
  goto out;
 }

 ret = ocfs2_find_path(ci, path, old_cpos);
 if (ret) {
  mlog_errno(ret);
  goto out;
 }





 ret = ocfs2_extend_trans(handle, 2);
 if (ret < 0) {
  mlog_errno(ret);
  goto out;
 }

 ret = ocfs2_journal_access_rb(handle, ci, ref_leaf_bh,
          OCFS2_JOURNAL_ACCESS_WRITE);
 if (ret < 0) {
  mlog_errno(ret);
  goto out;
 }

 ret = ocfs2_journal_access_eb(handle, ci, path_leaf_bh(path),
          OCFS2_JOURNAL_ACCESS_WRITE);
 if (ret < 0) {
  mlog_errno(ret);
  goto out;
 }


 el = path_leaf_el(path);

 for (i = 0; i < le16_to_cpu(el->l_next_free_rec); i++)
  if (le32_to_cpu(el->l_recs[i].e_cpos) == old_cpos)
   break;

 BUG_ON(i == le16_to_cpu(el->l_next_free_rec));

 el->l_recs[i].e_cpos = cpu_to_le32(new_cpos);


 rb->rf_cpos = cpu_to_le32(new_cpos);

 ocfs2_journal_dirty(handle, path_leaf_bh(path));
 ocfs2_journal_dirty(handle, ref_leaf_bh);

out:
 ocfs2_free_path(path);
 return ret;
}
