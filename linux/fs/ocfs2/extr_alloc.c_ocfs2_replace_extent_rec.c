
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ocfs2_path {int dummy; } ;
struct ocfs2_extent_tree {int et_ci; } ;
struct ocfs2_extent_rec {int dummy; } ;
struct ocfs2_extent_list {struct ocfs2_extent_rec* l_recs; } ;
typedef int handle_t ;


 int mlog_errno (int) ;
 int ocfs2_journal_dirty (int *,int ) ;
 int ocfs2_path_bh_journal_access (int *,int ,struct ocfs2_path*,scalar_t__) ;
 int path_leaf_bh (struct ocfs2_path*) ;
 scalar_t__ path_num_items (struct ocfs2_path*) ;

__attribute__((used)) static int ocfs2_replace_extent_rec(handle_t *handle,
        struct ocfs2_extent_tree *et,
        struct ocfs2_path *path,
        struct ocfs2_extent_list *el,
        int split_index,
        struct ocfs2_extent_rec *split_rec)
{
 int ret;

 ret = ocfs2_path_bh_journal_access(handle, et->et_ci, path,
        path_num_items(path) - 1);
 if (ret) {
  mlog_errno(ret);
  goto out;
 }

 el->l_recs[split_index] = *split_rec;

 ocfs2_journal_dirty(handle, path_leaf_bh(path));
out:
 return ret;
}
