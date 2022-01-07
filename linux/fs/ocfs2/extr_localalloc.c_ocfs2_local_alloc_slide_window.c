
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int moves; } ;
struct ocfs2_super {TYPE_1__ alloc_stats; TYPE_2__* local_alloc_bh; } ;
struct ocfs2_dinode {int dummy; } ;
struct ocfs2_alloc_context {int dummy; } ;
struct inode {int dummy; } ;
struct buffer_head {int dummy; } ;
typedef int handle_t ;
struct TYPE_5__ {int b_size; scalar_t__ b_data; } ;


 int ENOMEM ;
 int ENOSPC ;
 int GFP_NOFS ;
 int INODE_CACHE (struct inode*) ;
 scalar_t__ IS_ERR (int *) ;
 int OCFS2_JOURNAL_ACCESS_WRITE ;
 int OCFS2_LA_EVENT_SLIDE ;
 int OCFS2_WINDOW_MOVE_CREDITS ;
 int PTR_ERR (int *) ;
 int atomic_inc (int *) ;
 int brelse (struct buffer_head*) ;
 int iput (struct inode*) ;
 int kfree (struct ocfs2_dinode*) ;
 struct ocfs2_dinode* kmemdup (struct ocfs2_dinode*,int ,int ) ;
 int mlog_errno (int) ;
 int ocfs2_clear_local_alloc (struct ocfs2_dinode*) ;
 int ocfs2_commit_trans (struct ocfs2_super*,int *) ;
 int ocfs2_free_alloc_context (struct ocfs2_alloc_context*) ;
 int ocfs2_journal_access_di (int *,int ,TYPE_2__*,int ) ;
 int ocfs2_journal_dirty (int *,TYPE_2__*) ;
 int ocfs2_local_alloc_new_window (struct ocfs2_super*,int *,struct ocfs2_alloc_context*) ;
 int ocfs2_local_alloc_reserve_for_window (struct ocfs2_super*,struct ocfs2_alloc_context**,struct inode**,struct buffer_head**) ;
 int ocfs2_recalc_la_window (struct ocfs2_super*,int ) ;
 int * ocfs2_start_trans (struct ocfs2_super*,int ) ;
 int ocfs2_sync_local_to_main (struct ocfs2_super*,int *,struct ocfs2_dinode*,struct inode*,struct buffer_head*) ;

__attribute__((used)) static int ocfs2_local_alloc_slide_window(struct ocfs2_super *osb,
       struct inode *local_alloc_inode)
{
 int status = 0;
 struct buffer_head *main_bm_bh = ((void*)0);
 struct inode *main_bm_inode = ((void*)0);
 handle_t *handle = ((void*)0);
 struct ocfs2_dinode *alloc;
 struct ocfs2_dinode *alloc_copy = ((void*)0);
 struct ocfs2_alloc_context *ac = ((void*)0);

 ocfs2_recalc_la_window(osb, OCFS2_LA_EVENT_SLIDE);


 status = ocfs2_local_alloc_reserve_for_window(osb,
            &ac,
            &main_bm_inode,
            &main_bm_bh);
 if (status < 0) {
  if (status != -ENOSPC)
   mlog_errno(status);
  goto bail;
 }

 handle = ocfs2_start_trans(osb, OCFS2_WINDOW_MOVE_CREDITS);
 if (IS_ERR(handle)) {
  status = PTR_ERR(handle);
  handle = ((void*)0);
  mlog_errno(status);
  goto bail;
 }

 alloc = (struct ocfs2_dinode *) osb->local_alloc_bh->b_data;






 alloc_copy = kmemdup(alloc, osb->local_alloc_bh->b_size, GFP_NOFS);
 if (!alloc_copy) {
  status = -ENOMEM;
  mlog_errno(status);
  goto bail;
 }

 status = ocfs2_journal_access_di(handle,
      INODE_CACHE(local_alloc_inode),
      osb->local_alloc_bh,
      OCFS2_JOURNAL_ACCESS_WRITE);
 if (status < 0) {
  mlog_errno(status);
  goto bail;
 }

 ocfs2_clear_local_alloc(alloc);
 ocfs2_journal_dirty(handle, osb->local_alloc_bh);

 status = ocfs2_sync_local_to_main(osb, handle, alloc_copy,
       main_bm_inode, main_bm_bh);
 if (status < 0) {
  mlog_errno(status);
  goto bail;
 }

 status = ocfs2_local_alloc_new_window(osb, handle, ac);
 if (status < 0) {
  if (status != -ENOSPC)
   mlog_errno(status);
  goto bail;
 }

 atomic_inc(&osb->alloc_stats.moves);

bail:
 if (handle)
  ocfs2_commit_trans(osb, handle);

 brelse(main_bm_bh);

 iput(main_bm_inode);
 kfree(alloc_copy);

 if (ac)
  ocfs2_free_alloc_context(ac);

 if (status)
  mlog_errno(status);
 return status;
}
