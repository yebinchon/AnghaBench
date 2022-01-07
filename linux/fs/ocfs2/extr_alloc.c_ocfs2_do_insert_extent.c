
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ocfs2_path {int dummy; } ;
struct ocfs2_insert_type {scalar_t__ ins_appending; scalar_t__ ins_contig; scalar_t__ ins_split; } ;
struct ocfs2_extent_tree {int et_root_bh; int et_ci; struct ocfs2_extent_list* et_root_el; } ;
struct ocfs2_extent_rec {int e_leaf_clusters; int e_cpos; } ;
struct ocfs2_extent_list {int l_tree_depth; } ;
typedef int handle_t ;


 scalar_t__ APPEND_NONE ;
 scalar_t__ APPEND_TAIL ;
 scalar_t__ CONTIG_LEFT ;
 scalar_t__ CONTIG_NONE ;
 int ENOMEM ;
 int OCFS2_JOURNAL_ACCESS_WRITE ;
 scalar_t__ SPLIT_NONE ;
 int UINT_MAX ;
 scalar_t__ le16_to_cpu (int ) ;
 int le32_to_cpu (int ) ;
 int mlog_errno (int) ;
 int ocfs2_append_rec_to_path (int *,struct ocfs2_extent_tree*,struct ocfs2_extent_rec*,struct ocfs2_path*,struct ocfs2_path**) ;
 int ocfs2_et_root_journal_access (int *,struct ocfs2_extent_tree*,int ) ;
 int ocfs2_et_update_clusters (struct ocfs2_extent_tree*,scalar_t__) ;
 int ocfs2_find_path (int ,struct ocfs2_path*,int ) ;
 int ocfs2_free_path (struct ocfs2_path*) ;
 int ocfs2_insert_at_leaf (struct ocfs2_extent_tree*,struct ocfs2_extent_rec*,struct ocfs2_extent_list*,struct ocfs2_insert_type*) ;
 int ocfs2_insert_path (int *,struct ocfs2_extent_tree*,struct ocfs2_path*,struct ocfs2_path*,struct ocfs2_extent_rec*,struct ocfs2_insert_type*) ;
 int ocfs2_journal_dirty (int *,int ) ;
 struct ocfs2_path* ocfs2_new_path_from_et (struct ocfs2_extent_tree*) ;
 int ocfs2_rotate_tree_right (int *,struct ocfs2_extent_tree*,scalar_t__,int ,struct ocfs2_path*,struct ocfs2_path**) ;

__attribute__((used)) static int ocfs2_do_insert_extent(handle_t *handle,
      struct ocfs2_extent_tree *et,
      struct ocfs2_extent_rec *insert_rec,
      struct ocfs2_insert_type *type)
{
 int ret, rotate = 0;
 u32 cpos;
 struct ocfs2_path *right_path = ((void*)0);
 struct ocfs2_path *left_path = ((void*)0);
 struct ocfs2_extent_list *el;

 el = et->et_root_el;

 ret = ocfs2_et_root_journal_access(handle, et,
        OCFS2_JOURNAL_ACCESS_WRITE);
 if (ret) {
  mlog_errno(ret);
  goto out;
 }

 if (le16_to_cpu(el->l_tree_depth) == 0) {
  ocfs2_insert_at_leaf(et, insert_rec, el, type);
  goto out_update_clusters;
 }

 right_path = ocfs2_new_path_from_et(et);
 if (!right_path) {
  ret = -ENOMEM;
  mlog_errno(ret);
  goto out;
 }






 cpos = le32_to_cpu(insert_rec->e_cpos);
 if (type->ins_appending == APPEND_NONE &&
     type->ins_contig == CONTIG_NONE) {
  rotate = 1;
  cpos = UINT_MAX;
 }

 ret = ocfs2_find_path(et->et_ci, right_path, cpos);
 if (ret) {
  mlog_errno(ret);
  goto out;
 }
 if (rotate) {
  ret = ocfs2_rotate_tree_right(handle, et, type->ins_split,
           le32_to_cpu(insert_rec->e_cpos),
           right_path, &left_path);
  if (ret) {
   mlog_errno(ret);
   goto out;
  }





  ret = ocfs2_et_root_journal_access(handle, et,
         OCFS2_JOURNAL_ACCESS_WRITE);
  if (ret) {
   mlog_errno(ret);
   goto out;
  }
 } else if (type->ins_appending == APPEND_TAIL
     && type->ins_contig != CONTIG_LEFT) {
  ret = ocfs2_append_rec_to_path(handle, et, insert_rec,
            right_path, &left_path);
  if (ret) {
   mlog_errno(ret);
   goto out;
  }
 }

 ret = ocfs2_insert_path(handle, et, left_path, right_path,
    insert_rec, type);
 if (ret) {
  mlog_errno(ret);
  goto out;
 }

out_update_clusters:
 if (type->ins_split == SPLIT_NONE)
  ocfs2_et_update_clusters(et,
      le16_to_cpu(insert_rec->e_leaf_clusters));

 ocfs2_journal_dirty(handle, et->et_root_bh);

out:
 ocfs2_free_path(left_path);
 ocfs2_free_path(right_path);

 return ret;
}
