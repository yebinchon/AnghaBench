
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct ocfs2_path {int dummy; } ;
struct ocfs2_merge_ctxt {scalar_t__ c_contig_type; scalar_t__ c_split_covers_rec; scalar_t__ c_has_empty_extent; } ;
struct ocfs2_extent_tree {int dummy; } ;
struct ocfs2_extent_rec {int dummy; } ;
struct ocfs2_extent_list {struct ocfs2_extent_rec* l_recs; } ;
struct ocfs2_cached_dealloc_ctxt {int dummy; } ;
struct TYPE_7__ {int h_buffer_credits; } ;
typedef TYPE_1__ handle_t ;


 int BUG_ON (int) ;
 scalar_t__ CONTIG_LEFTRIGHT ;
 scalar_t__ CONTIG_NONE ;
 scalar_t__ CONTIG_RIGHT ;
 int mlog_errno (int) ;
 int ocfs2_extend_rotate_transaction (TYPE_1__*,int ,int ,struct ocfs2_path*) ;
 int ocfs2_is_empty_extent (struct ocfs2_extent_rec*) ;
 int ocfs2_merge_rec_left (struct ocfs2_path*,TYPE_1__*,struct ocfs2_extent_tree*,struct ocfs2_extent_rec*,struct ocfs2_cached_dealloc_ctxt*,int) ;
 int ocfs2_merge_rec_right (struct ocfs2_path*,TYPE_1__*,struct ocfs2_extent_tree*,struct ocfs2_extent_rec*,int) ;
 int ocfs2_rotate_tree_left (TYPE_1__*,struct ocfs2_extent_tree*,struct ocfs2_path*,struct ocfs2_cached_dealloc_ctxt*) ;
 struct ocfs2_extent_list* path_leaf_el (struct ocfs2_path*) ;

__attribute__((used)) static int ocfs2_try_to_merge_extent(handle_t *handle,
         struct ocfs2_extent_tree *et,
         struct ocfs2_path *path,
         int split_index,
         struct ocfs2_extent_rec *split_rec,
         struct ocfs2_cached_dealloc_ctxt *dealloc,
         struct ocfs2_merge_ctxt *ctxt)
{
 int ret = 0;
 struct ocfs2_extent_list *el = path_leaf_el(path);
 struct ocfs2_extent_rec *rec = &el->l_recs[split_index];

 BUG_ON(ctxt->c_contig_type == CONTIG_NONE);

 if (ctxt->c_split_covers_rec && ctxt->c_has_empty_extent) {

  ret = ocfs2_extend_rotate_transaction(handle, 0,
    handle->h_buffer_credits,
    path);
  if (ret) {
   mlog_errno(ret);
   goto out;
  }







  ret = ocfs2_rotate_tree_left(handle, et, path, dealloc);
  if (ret) {
   mlog_errno(ret);
   goto out;
  }
  split_index--;
  rec = &el->l_recs[split_index];
 }

 if (ctxt->c_contig_type == CONTIG_LEFTRIGHT) {



  BUG_ON(!ctxt->c_split_covers_rec);
  ret = ocfs2_merge_rec_right(path, handle, et, split_rec,
         split_index);
  if (ret) {
   mlog_errno(ret);
   goto out;
  }




  BUG_ON(!ocfs2_is_empty_extent(&el->l_recs[0]));


  ret = ocfs2_extend_rotate_transaction(handle, 0,
     handle->h_buffer_credits,
     path);
  if (ret) {
   mlog_errno(ret);
   goto out;
  }


  ret = ocfs2_rotate_tree_left(handle, et, path, dealloc);
  if (ret) {
   mlog_errno(ret);
   goto out;
  }

  rec = &el->l_recs[split_index];





  ret = ocfs2_merge_rec_left(path, handle, et, rec,
        dealloc, split_index);

  if (ret) {
   mlog_errno(ret);
   goto out;
  }


  ret = ocfs2_extend_rotate_transaction(handle, 0,
    handle->h_buffer_credits,
    path);
  if (ret) {
   mlog_errno(ret);
   goto out;
  }

  ret = ocfs2_rotate_tree_left(handle, et, path, dealloc);




  if (ret)
   mlog_errno(ret);
  ret = 0;
 } else {







  if (ctxt->c_contig_type == CONTIG_RIGHT) {
   ret = ocfs2_merge_rec_left(path, handle, et,
         split_rec, dealloc,
         split_index);
   if (ret) {
    mlog_errno(ret);
    goto out;
   }
  } else {
   ret = ocfs2_merge_rec_right(path, handle,
          et, split_rec,
          split_index);
   if (ret) {
    mlog_errno(ret);
    goto out;
   }
  }

  if (ctxt->c_split_covers_rec) {

   ret = ocfs2_extend_rotate_transaction(handle, 0,
     handle->h_buffer_credits,
     path);
   if (ret) {
    mlog_errno(ret);
    ret = 0;
    goto out;
   }





   ret = ocfs2_rotate_tree_left(handle, et, path,
           dealloc);
   if (ret)
    mlog_errno(ret);
   ret = 0;
  }
 }

out:
 return ret;
}
