
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ocfs2_path {int dummy; } ;
struct ocfs2_extent_tree {int et_ci; } ;
struct ocfs2_extent_rec {int dummy; } ;
struct ocfs2_extent_list {int l_next_free_rec; struct ocfs2_extent_rec* l_recs; } ;
typedef int handle_t ;


 int ENOMEM ;
 int UINT_MAX ;
 int le16_to_cpu (int ) ;
 int mlog_errno (int) ;
 int ocfs2_adjust_rightmost_records (int *,struct ocfs2_extent_tree*,struct ocfs2_path*,struct ocfs2_extent_rec*) ;
 int ocfs2_extend_trans (int *,int ) ;
 int ocfs2_find_path (int ,struct ocfs2_path*,int ) ;
 int ocfs2_free_path (struct ocfs2_path*) ;
 int ocfs2_journal_access_path (int ,int *,struct ocfs2_path*) ;
 struct ocfs2_path* ocfs2_new_path_from_et (struct ocfs2_extent_tree*) ;
 struct ocfs2_extent_list* path_leaf_el (struct ocfs2_path*) ;
 int path_num_items (struct ocfs2_path*) ;

__attribute__((used)) static int ocfs2_adjust_rightmost_branch(handle_t *handle,
      struct ocfs2_extent_tree *et)
{
 int status;
 struct ocfs2_path *path = ((void*)0);
 struct ocfs2_extent_list *el;
 struct ocfs2_extent_rec *rec;

 path = ocfs2_new_path_from_et(et);
 if (!path) {
  status = -ENOMEM;
  return status;
 }

 status = ocfs2_find_path(et->et_ci, path, UINT_MAX);
 if (status < 0) {
  mlog_errno(status);
  goto out;
 }

 status = ocfs2_extend_trans(handle, path_num_items(path));
 if (status < 0) {
  mlog_errno(status);
  goto out;
 }

 status = ocfs2_journal_access_path(et->et_ci, handle, path);
 if (status < 0) {
  mlog_errno(status);
  goto out;
 }

 el = path_leaf_el(path);
 rec = &el->l_recs[le16_to_cpu(el->l_next_free_rec) - 1];

 ocfs2_adjust_rightmost_records(handle, et, path, rec);

out:
 ocfs2_free_path(path);
 return status;
}
