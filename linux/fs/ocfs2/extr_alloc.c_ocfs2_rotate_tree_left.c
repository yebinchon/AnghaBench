
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct ocfs2_path {scalar_t__ p_tree_depth; } ;
struct ocfs2_extent_tree {int et_ci; } ;
struct ocfs2_extent_list {int l_next_free_rec; int * l_recs; } ;
struct ocfs2_extent_block {scalar_t__ h_next_leaf_blk; int h_blkno; struct ocfs2_extent_list h_list; } ;
struct ocfs2_cached_dealloc_ctxt {int dummy; } ;
struct TYPE_7__ {int h_buffer_credits; } ;
typedef TYPE_1__ handle_t ;
struct TYPE_8__ {scalar_t__ b_data; } ;


 int EAGAIN ;
 int __ocfs2_rotate_tree_left (TYPE_1__*,struct ocfs2_extent_tree*,int,struct ocfs2_path*,struct ocfs2_cached_dealloc_ctxt*,struct ocfs2_path**) ;
 int le16_to_cpu (int ) ;
 scalar_t__ le64_to_cpu (int ) ;
 int mlog_errno (int) ;
 int ocfs2_error (int ,char*,unsigned long long,unsigned long long) ;
 int ocfs2_free_path (struct ocfs2_path*) ;
 int ocfs2_is_empty_extent (int *) ;
 int ocfs2_metadata_cache_get_super (int ) ;
 scalar_t__ ocfs2_metadata_cache_owner (int ) ;
 int ocfs2_remove_rightmost_path (TYPE_1__*,struct ocfs2_extent_tree*,struct ocfs2_path*,struct ocfs2_cached_dealloc_ctxt*) ;
 int ocfs2_rotate_rightmost_leaf_left (TYPE_1__*,struct ocfs2_extent_tree*,struct ocfs2_path*) ;
 TYPE_2__* path_leaf_bh (struct ocfs2_path*) ;
 struct ocfs2_extent_list* path_leaf_el (struct ocfs2_path*) ;

__attribute__((used)) static int ocfs2_rotate_tree_left(handle_t *handle,
      struct ocfs2_extent_tree *et,
      struct ocfs2_path *path,
      struct ocfs2_cached_dealloc_ctxt *dealloc)
{
 int ret, orig_credits = handle->h_buffer_credits;
 struct ocfs2_path *tmp_path = ((void*)0), *restart_path = ((void*)0);
 struct ocfs2_extent_block *eb;
 struct ocfs2_extent_list *el;

 el = path_leaf_el(path);
 if (!ocfs2_is_empty_extent(&el->l_recs[0]))
  return 0;

 if (path->p_tree_depth == 0) {
rightmost_no_delete:




  ret = ocfs2_rotate_rightmost_leaf_left(handle, et, path);
  if (ret)
   mlog_errno(ret);
  goto out;
 }
 eb = (struct ocfs2_extent_block *)path_leaf_bh(path)->b_data;
 el = &eb->h_list;
 if (eb->h_next_leaf_blk == 0) {





  if (le16_to_cpu(el->l_next_free_rec) > 1)
   goto rightmost_no_delete;

  if (le16_to_cpu(el->l_next_free_rec) == 0) {
   ret = ocfs2_error(ocfs2_metadata_cache_get_super(et->et_ci),
     "Owner %llu has empty extent block at %llu\n",
     (unsigned long long)ocfs2_metadata_cache_owner(et->et_ci),
     (unsigned long long)le64_to_cpu(eb->h_blkno));
   goto out;
  }
  ret = ocfs2_remove_rightmost_path(handle, et, path,
        dealloc);
  if (ret)
   mlog_errno(ret);
  goto out;
 }





try_rotate:
 ret = __ocfs2_rotate_tree_left(handle, et, orig_credits, path,
           dealloc, &restart_path);
 if (ret && ret != -EAGAIN) {
  mlog_errno(ret);
  goto out;
 }

 while (ret == -EAGAIN) {
  tmp_path = restart_path;
  restart_path = ((void*)0);

  ret = __ocfs2_rotate_tree_left(handle, et, orig_credits,
            tmp_path, dealloc,
            &restart_path);
  if (ret && ret != -EAGAIN) {
   mlog_errno(ret);
   goto out;
  }

  ocfs2_free_path(tmp_path);
  tmp_path = ((void*)0);

  if (ret == 0)
   goto try_rotate;
 }

out:
 ocfs2_free_path(tmp_path);
 ocfs2_free_path(restart_path);
 return ret;
}
