
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ocfs2_super {int dummy; } ;
struct ocfs2_path {int p_tree_depth; } ;
struct ocfs2_extent_tree {int dummy; } ;
struct ocfs2_cached_dealloc_ctxt {int dummy; } ;
typedef int handle_t ;


 scalar_t__ IS_ERR (int *) ;
 int PTR_ERR (int *) ;
 int mlog_errno (int) ;
 int ocfs2_commit_trans (struct ocfs2_super*,int *) ;
 int ocfs2_remove_rightmost_path (int *,struct ocfs2_extent_tree*,struct ocfs2_path*,struct ocfs2_cached_dealloc_ctxt*) ;
 int * ocfs2_start_trans (struct ocfs2_super*,int) ;

__attribute__((used)) static int ocfs2_remove_rightmost_empty_extent(struct ocfs2_super *osb,
    struct ocfs2_extent_tree *et,
    struct ocfs2_path *path,
    struct ocfs2_cached_dealloc_ctxt *dealloc)
{
 handle_t *handle;
 int ret;
 int credits = path->p_tree_depth * 2 + 1;

 handle = ocfs2_start_trans(osb, credits);
 if (IS_ERR(handle)) {
  ret = PTR_ERR(handle);
  mlog_errno(ret);
  return ret;
 }

 ret = ocfs2_remove_rightmost_path(handle, et, path, dealloc);
 if (ret)
  mlog_errno(ret);

 ocfs2_commit_trans(osb, handle);
 return ret;
}
