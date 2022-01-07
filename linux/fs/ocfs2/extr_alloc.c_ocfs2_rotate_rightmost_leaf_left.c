
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ocfs2_path {int dummy; } ;
struct ocfs2_extent_tree {int et_ci; } ;
struct ocfs2_extent_list {int * l_recs; } ;
struct buffer_head {int dummy; } ;
typedef int handle_t ;


 int mlog_errno (int) ;
 int ocfs2_is_empty_extent (int *) ;
 int ocfs2_journal_dirty (int *,struct buffer_head*) ;
 int ocfs2_path_bh_journal_access (int *,int ,struct ocfs2_path*,scalar_t__) ;
 int ocfs2_remove_empty_extent (struct ocfs2_extent_list*) ;
 struct buffer_head* path_leaf_bh (struct ocfs2_path*) ;
 struct ocfs2_extent_list* path_leaf_el (struct ocfs2_path*) ;
 scalar_t__ path_num_items (struct ocfs2_path*) ;

__attribute__((used)) static int ocfs2_rotate_rightmost_leaf_left(handle_t *handle,
         struct ocfs2_extent_tree *et,
         struct ocfs2_path *path)
{
 int ret;
 struct buffer_head *bh = path_leaf_bh(path);
 struct ocfs2_extent_list *el = path_leaf_el(path);

 if (!ocfs2_is_empty_extent(&el->l_recs[0]))
  return 0;

 ret = ocfs2_path_bh_journal_access(handle, et->et_ci, path,
        path_num_items(path) - 1);
 if (ret) {
  mlog_errno(ret);
  goto out;
 }

 ocfs2_remove_empty_extent(el);
 ocfs2_journal_dirty(handle, bh);

out:
 return ret;
}
