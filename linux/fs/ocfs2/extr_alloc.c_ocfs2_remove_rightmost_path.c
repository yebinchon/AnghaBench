
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct ocfs2_path {int dummy; } ;
struct ocfs2_extent_tree {struct ocfs2_extent_list* et_root_el; int et_ci; } ;
struct ocfs2_extent_rec {int dummy; } ;
struct ocfs2_extent_list {int * l_recs; scalar_t__ l_next_free_rec; scalar_t__ l_tree_depth; } ;
struct ocfs2_extent_block {int h_blkno; } ;
struct ocfs2_cached_dealloc_ctxt {int dummy; } ;
typedef int handle_t ;
struct TYPE_2__ {scalar_t__ b_data; } ;


 int ENOMEM ;
 int le64_to_cpu (int ) ;
 int memset (int *,int ,int) ;
 int mlog_errno (int) ;
 int ocfs2_et_sanity_check (struct ocfs2_extent_tree*) ;
 int ocfs2_et_set_last_eb_blk (struct ocfs2_extent_tree*,int ) ;
 int ocfs2_find_cpos_for_left_leaf (int ,struct ocfs2_path*,scalar_t__*) ;
 int ocfs2_find_path (int ,struct ocfs2_path*,scalar_t__) ;
 int ocfs2_find_subtree_root (struct ocfs2_extent_tree*,struct ocfs2_path*,struct ocfs2_path*) ;
 int ocfs2_free_path (struct ocfs2_path*) ;
 int ocfs2_journal_access_path (int ,int *,struct ocfs2_path*) ;
 int ocfs2_journal_dirty (int *,int ) ;
 int ocfs2_metadata_cache_get_super (int ) ;
 struct ocfs2_path* ocfs2_new_path_from_path (struct ocfs2_path*) ;
 int ocfs2_unlink_path (int *,struct ocfs2_extent_tree*,struct ocfs2_cached_dealloc_ctxt*,struct ocfs2_path*,int) ;
 int ocfs2_unlink_subtree (int *,struct ocfs2_extent_tree*,struct ocfs2_path*,struct ocfs2_path*,int,struct ocfs2_cached_dealloc_ctxt*) ;
 int ocfs2_update_edge_lengths (int *,struct ocfs2_extent_tree*,struct ocfs2_path*) ;
 TYPE_1__* path_leaf_bh (struct ocfs2_path*) ;
 int path_root_bh (struct ocfs2_path*) ;

__attribute__((used)) static int ocfs2_remove_rightmost_path(handle_t *handle,
    struct ocfs2_extent_tree *et,
    struct ocfs2_path *path,
    struct ocfs2_cached_dealloc_ctxt *dealloc)
{
 int ret, subtree_index;
 u32 cpos;
 struct ocfs2_path *left_path = ((void*)0);
 struct ocfs2_extent_block *eb;
 struct ocfs2_extent_list *el;

 ret = ocfs2_et_sanity_check(et);
 if (ret)
  goto out;

 ret = ocfs2_journal_access_path(et->et_ci, handle, path);
 if (ret) {
  mlog_errno(ret);
  goto out;
 }

 ret = ocfs2_find_cpos_for_left_leaf(ocfs2_metadata_cache_get_super(et->et_ci),
         path, &cpos);
 if (ret) {
  mlog_errno(ret);
  goto out;
 }

 if (cpos) {




  left_path = ocfs2_new_path_from_path(path);
  if (!left_path) {
   ret = -ENOMEM;
   mlog_errno(ret);
   goto out;
  }

  ret = ocfs2_find_path(et->et_ci, left_path, cpos);
  if (ret) {
   mlog_errno(ret);
   goto out;
  }

  ret = ocfs2_journal_access_path(et->et_ci, handle, left_path);
  if (ret) {
   mlog_errno(ret);
   goto out;
  }

  subtree_index = ocfs2_find_subtree_root(et, left_path, path);

  ocfs2_unlink_subtree(handle, et, left_path, path,
         subtree_index, dealloc);
  ret = ocfs2_update_edge_lengths(handle, et, left_path);
  if (ret) {
   mlog_errno(ret);
   goto out;
  }

  eb = (struct ocfs2_extent_block *)path_leaf_bh(left_path)->b_data;
  ocfs2_et_set_last_eb_blk(et, le64_to_cpu(eb->h_blkno));
 } else {







  ocfs2_unlink_path(handle, et, dealloc, path, 1);

  el = et->et_root_el;
  el->l_tree_depth = 0;
  el->l_next_free_rec = 0;
  memset(&el->l_recs[0], 0, sizeof(struct ocfs2_extent_rec));

  ocfs2_et_set_last_eb_blk(et, 0);
 }

 ocfs2_journal_dirty(handle, path_root_bh(path));

out:
 ocfs2_free_path(left_path);
 return ret;
}
