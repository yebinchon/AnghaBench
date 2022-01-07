
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct ocfs2_path {TYPE_1__* p_node; } ;
struct ocfs2_extent_tree {int et_ci; } ;
struct ocfs2_extent_rec {int e_leaf_clusters; int e_blkno; int e_cpos; } ;
struct ocfs2_extent_list {int l_next_free_rec; struct ocfs2_extent_rec* l_recs; int l_count; } ;
struct ocfs2_cached_dealloc_ctxt {int dummy; } ;
struct buffer_head {int dummy; } ;
struct TYPE_10__ {int h_buffer_credits; } ;
typedef TYPE_2__ handle_t ;
struct TYPE_9__ {struct buffer_head* bh; } ;


 int BUG_ON (int) ;
 int le16_add_cpu (int *,unsigned int) ;
 int le16_to_cpu (int ) ;
 int le32_add_cpu (int *,unsigned int) ;
 scalar_t__ le32_to_cpu (int ) ;
 int le64_add_cpu (int *,int ) ;
 int mlog_errno (int) ;
 int ocfs2_cleanup_merge (struct ocfs2_extent_list*,int) ;
 int ocfs2_clusters_to_blocks (int ,unsigned int) ;
 int ocfs2_complete_edge_insert (TYPE_2__*,struct ocfs2_path*,struct ocfs2_path*,int) ;
 int ocfs2_extend_rotate_transaction (TYPE_2__*,int,int ,struct ocfs2_path*) ;
 int ocfs2_find_subtree_root (struct ocfs2_extent_tree*,struct ocfs2_path*,struct ocfs2_path*) ;
 int ocfs2_free_path (struct ocfs2_path*) ;
 int ocfs2_get_left_path (struct ocfs2_extent_tree*,struct ocfs2_path*,struct ocfs2_path**) ;
 scalar_t__ ocfs2_is_empty_extent (struct ocfs2_extent_rec*) ;
 int ocfs2_journal_dirty (TYPE_2__*,struct buffer_head*) ;
 int ocfs2_metadata_cache_get_super (int ) ;
 int ocfs2_mv_path (struct ocfs2_path*,struct ocfs2_path*) ;
 int ocfs2_path_bh_journal_access (TYPE_2__*,int ,struct ocfs2_path*,int) ;
 int ocfs2_remove_rightmost_path (TYPE_2__*,struct ocfs2_extent_tree*,struct ocfs2_path*,struct ocfs2_cached_dealloc_ctxt*) ;
 struct buffer_head* path_leaf_bh (struct ocfs2_path*) ;
 struct ocfs2_extent_list* path_leaf_el (struct ocfs2_path*) ;
 int path_num_items (struct ocfs2_path*) ;

__attribute__((used)) static int ocfs2_merge_rec_left(struct ocfs2_path *right_path,
    handle_t *handle,
    struct ocfs2_extent_tree *et,
    struct ocfs2_extent_rec *split_rec,
    struct ocfs2_cached_dealloc_ctxt *dealloc,
    int index)
{
 int ret, i, subtree_index = 0, has_empty_extent = 0;
 unsigned int split_clusters = le16_to_cpu(split_rec->e_leaf_clusters);
 struct ocfs2_extent_rec *left_rec;
 struct ocfs2_extent_rec *right_rec;
 struct ocfs2_extent_list *el = path_leaf_el(right_path);
 struct buffer_head *bh = path_leaf_bh(right_path);
 struct buffer_head *root_bh = ((void*)0);
 struct ocfs2_path *left_path = ((void*)0);
 struct ocfs2_extent_list *left_el;

 BUG_ON(index < 0);

 right_rec = &el->l_recs[index];
 if (index == 0) {

  ret = ocfs2_get_left_path(et, right_path, &left_path);
  if (ret) {
   mlog_errno(ret);
   return ret;
  }

  left_el = path_leaf_el(left_path);
  BUG_ON(le16_to_cpu(left_el->l_next_free_rec) !=
         le16_to_cpu(left_el->l_count));

  left_rec = &left_el->l_recs[
    le16_to_cpu(left_el->l_next_free_rec) - 1];
  BUG_ON(le32_to_cpu(left_rec->e_cpos) +
         le16_to_cpu(left_rec->e_leaf_clusters) !=
         le32_to_cpu(split_rec->e_cpos));

  subtree_index = ocfs2_find_subtree_root(et, left_path,
       right_path);

  ret = ocfs2_extend_rotate_transaction(handle, subtree_index,
            handle->h_buffer_credits,
            left_path);
  if (ret) {
   mlog_errno(ret);
   goto out;
  }

  root_bh = left_path->p_node[subtree_index].bh;
  BUG_ON(root_bh != right_path->p_node[subtree_index].bh);

  ret = ocfs2_path_bh_journal_access(handle, et->et_ci, right_path,
         subtree_index);
  if (ret) {
   mlog_errno(ret);
   goto out;
  }

  for (i = subtree_index + 1;
       i < path_num_items(right_path); i++) {
   ret = ocfs2_path_bh_journal_access(handle, et->et_ci,
          right_path, i);
   if (ret) {
    mlog_errno(ret);
    goto out;
   }

   ret = ocfs2_path_bh_journal_access(handle, et->et_ci,
          left_path, i);
   if (ret) {
    mlog_errno(ret);
    goto out;
   }
  }
 } else {
  left_rec = &el->l_recs[index - 1];
  if (ocfs2_is_empty_extent(&el->l_recs[0]))
   has_empty_extent = 1;
 }

 ret = ocfs2_path_bh_journal_access(handle, et->et_ci, right_path,
        path_num_items(right_path) - 1);
 if (ret) {
  mlog_errno(ret);
  goto out;
 }

 if (has_empty_extent && index == 1) {



  *left_rec = *split_rec;
 } else
  le16_add_cpu(&left_rec->e_leaf_clusters, split_clusters);

 le32_add_cpu(&right_rec->e_cpos, split_clusters);
 le64_add_cpu(&right_rec->e_blkno,
       ocfs2_clusters_to_blocks(ocfs2_metadata_cache_get_super(et->et_ci),
           split_clusters));
 le16_add_cpu(&right_rec->e_leaf_clusters, -split_clusters);

 ocfs2_cleanup_merge(el, index);

 ocfs2_journal_dirty(handle, bh);
 if (left_path) {
  ocfs2_journal_dirty(handle, path_leaf_bh(left_path));






  if (le16_to_cpu(right_rec->e_leaf_clusters) == 0 &&
      le16_to_cpu(el->l_next_free_rec) == 1) {

   ret = ocfs2_extend_rotate_transaction(handle, 0,
     handle->h_buffer_credits,
     right_path);
   if (ret) {
    mlog_errno(ret);
    goto out;
   }

   ret = ocfs2_remove_rightmost_path(handle, et,
         right_path,
         dealloc);
   if (ret) {
    mlog_errno(ret);
    goto out;
   }




   ocfs2_mv_path(right_path, left_path);
   left_path = ((void*)0);
  } else
   ocfs2_complete_edge_insert(handle, left_path,
         right_path, subtree_index);
 }
out:
 ocfs2_free_path(left_path);
 return ret;
}
