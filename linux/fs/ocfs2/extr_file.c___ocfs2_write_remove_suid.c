
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ocfs2_super {int dummy; } ;
struct ocfs2_dinode {int i_mode; } ;
struct inode {int i_mode; int i_sb; } ;
struct buffer_head {scalar_t__ b_data; } ;
typedef int handle_t ;
struct TYPE_2__ {scalar_t__ ip_blkno; } ;


 int INODE_CACHE (struct inode*) ;
 scalar_t__ IS_ERR (int *) ;
 TYPE_1__* OCFS2_I (struct inode*) ;
 int OCFS2_INODE_UPDATE_CREDITS ;
 int OCFS2_JOURNAL_ACCESS_WRITE ;
 struct ocfs2_super* OCFS2_SB (int ) ;
 int PTR_ERR (int *) ;
 int S_ISGID ;
 int S_ISUID ;
 int S_IXGRP ;
 int cpu_to_le16 (int) ;
 int mlog_errno (int) ;
 int ocfs2_commit_trans (struct ocfs2_super*,int *) ;
 int ocfs2_journal_access_di (int *,int ,struct buffer_head*,int ) ;
 int ocfs2_journal_dirty (int *,struct buffer_head*) ;
 int * ocfs2_start_trans (struct ocfs2_super*,int ) ;
 int ocfs2_update_inode_fsync_trans (int *,struct inode*,int ) ;
 int trace_ocfs2_write_remove_suid (unsigned long long,int) ;

__attribute__((used)) static int __ocfs2_write_remove_suid(struct inode *inode,
         struct buffer_head *bh)
{
 int ret;
 handle_t *handle;
 struct ocfs2_super *osb = OCFS2_SB(inode->i_sb);
 struct ocfs2_dinode *di;

 trace_ocfs2_write_remove_suid(
   (unsigned long long)OCFS2_I(inode)->ip_blkno,
   inode->i_mode);

 handle = ocfs2_start_trans(osb, OCFS2_INODE_UPDATE_CREDITS);
 if (IS_ERR(handle)) {
  ret = PTR_ERR(handle);
  mlog_errno(ret);
  goto out;
 }

 ret = ocfs2_journal_access_di(handle, INODE_CACHE(inode), bh,
          OCFS2_JOURNAL_ACCESS_WRITE);
 if (ret < 0) {
  mlog_errno(ret);
  goto out_trans;
 }

 inode->i_mode &= ~S_ISUID;
 if ((inode->i_mode & S_ISGID) && (inode->i_mode & S_IXGRP))
  inode->i_mode &= ~S_ISGID;

 di = (struct ocfs2_dinode *) bh->b_data;
 di->i_mode = cpu_to_le16(inode->i_mode);
 ocfs2_update_inode_fsync_trans(handle, inode, 0);

 ocfs2_journal_dirty(handle, bh);

out_trans:
 ocfs2_commit_trans(osb, handle);
out:
 return ret;
}
