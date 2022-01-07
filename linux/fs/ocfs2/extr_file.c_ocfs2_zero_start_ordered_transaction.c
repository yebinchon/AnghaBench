
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ocfs2_super {int dummy; } ;
struct inode {int i_sb; } ;
struct buffer_head {int dummy; } ;
typedef int loff_t ;
typedef int handle_t ;


 int ENOMEM ;
 int * ERR_PTR (int) ;
 int INODE_CACHE (struct inode*) ;
 scalar_t__ IS_ERR (int *) ;
 int OCFS2_INODE_UPDATE_CREDITS ;
 int OCFS2_JOURNAL_ACCESS_WRITE ;
 struct ocfs2_super* OCFS2_SB (int ) ;
 int mlog_errno (int) ;
 int ocfs2_commit_trans (struct ocfs2_super*,int *) ;
 int ocfs2_jbd2_inode_add_write (int *,struct inode*,int ,int ) ;
 int ocfs2_journal_access_di (int *,int ,struct buffer_head*,int ) ;
 int ocfs2_should_order_data (struct inode*) ;
 int * ocfs2_start_trans (struct ocfs2_super*,int ) ;
 int ocfs2_update_inode_fsync_trans (int *,struct inode*,int) ;

__attribute__((used)) static handle_t *ocfs2_zero_start_ordered_transaction(struct inode *inode,
            struct buffer_head *di_bh,
            loff_t start_byte,
            loff_t length)
{
 struct ocfs2_super *osb = OCFS2_SB(inode->i_sb);
 handle_t *handle = ((void*)0);
 int ret = 0;

 if (!ocfs2_should_order_data(inode))
  goto out;

 handle = ocfs2_start_trans(osb, OCFS2_INODE_UPDATE_CREDITS);
 if (IS_ERR(handle)) {
  ret = -ENOMEM;
  mlog_errno(ret);
  goto out;
 }

 ret = ocfs2_jbd2_inode_add_write(handle, inode, start_byte, length);
 if (ret < 0) {
  mlog_errno(ret);
  goto out;
 }

 ret = ocfs2_journal_access_di(handle, INODE_CACHE(inode), di_bh,
          OCFS2_JOURNAL_ACCESS_WRITE);
 if (ret)
  mlog_errno(ret);
 ocfs2_update_inode_fsync_trans(handle, inode, 1);

out:
 if (ret) {
  if (!IS_ERR(handle))
   ocfs2_commit_trans(osb, handle);
  handle = ERR_PTR(ret);
 }
 return handle;
}
