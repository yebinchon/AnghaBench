
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ocfs2_super {int dummy; } ;
struct ocfs2_dinode {scalar_t__ i_clusters; } ;
struct inode {int dummy; } ;
struct buffer_head {scalar_t__ b_data; } ;
typedef int handle_t ;


 int INODE_CACHE (struct inode*) ;
 scalar_t__ IS_ERR (int *) ;
 int OCFS2_INODE_UPDATE_CREDITS ;
 int OCFS2_JOURNAL_ACCESS_WRITE ;
 int PTR_ERR (int *) ;
 int i_size_write (struct inode*,int ) ;
 int mlog_errno (int) ;
 int ocfs2_begin_ordered_truncate (struct inode*,int ) ;
 int ocfs2_commit_trans (struct ocfs2_super*,int *) ;
 int ocfs2_commit_truncate (struct ocfs2_super*,struct inode*,struct buffer_head*) ;
 int ocfs2_journal_access_di (int *,int ,struct buffer_head*,int ) ;
 int ocfs2_mark_inode_dirty (int *,struct inode*,struct buffer_head*) ;
 scalar_t__ ocfs2_should_order_data (struct inode*) ;
 int * ocfs2_start_trans (struct ocfs2_super*,int ) ;

__attribute__((used)) static int ocfs2_truncate_for_delete(struct ocfs2_super *osb,
         struct inode *inode,
         struct buffer_head *fe_bh)
{
 int status = 0;
 struct ocfs2_dinode *fe;
 handle_t *handle = ((void*)0);

 fe = (struct ocfs2_dinode *) fe_bh->b_data;





 if (fe->i_clusters) {
  if (ocfs2_should_order_data(inode))
   ocfs2_begin_ordered_truncate(inode, 0);

  handle = ocfs2_start_trans(osb, OCFS2_INODE_UPDATE_CREDITS);
  if (IS_ERR(handle)) {
   status = PTR_ERR(handle);
   handle = ((void*)0);
   mlog_errno(status);
   goto out;
  }

  status = ocfs2_journal_access_di(handle, INODE_CACHE(inode),
       fe_bh,
       OCFS2_JOURNAL_ACCESS_WRITE);
  if (status < 0) {
   mlog_errno(status);
   goto out;
  }

  i_size_write(inode, 0);

  status = ocfs2_mark_inode_dirty(handle, inode, fe_bh);
  if (status < 0) {
   mlog_errno(status);
   goto out;
  }

  ocfs2_commit_trans(osb, handle);
  handle = ((void*)0);

  status = ocfs2_commit_truncate(osb, inode, fe_bh);
  if (status < 0)
   mlog_errno(status);
 }

out:
 if (handle)
  ocfs2_commit_trans(osb, handle);
 return status;
}
