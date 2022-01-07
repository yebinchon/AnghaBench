
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct ocfs2_super {int dummy; } ;
struct inode {int i_sb; } ;
struct buffer_head {int dummy; } ;
typedef int handle_t ;


 scalar_t__ IS_ERR (int *) ;
 int OCFS2_INODE_UPDATE_CREDITS ;
 struct ocfs2_super* OCFS2_SB (int ) ;
 int PTR_ERR (int *) ;
 int mlog_errno (int) ;
 int ocfs2_commit_trans (struct ocfs2_super*,int *) ;
 int ocfs2_set_inode_size (int *,struct inode*,struct buffer_head*,int ) ;
 int * ocfs2_start_trans (struct ocfs2_super*,int ) ;
 int ocfs2_update_inode_fsync_trans (int *,struct inode*,int ) ;

int ocfs2_simple_size_update(struct inode *inode,
        struct buffer_head *di_bh,
        u64 new_i_size)
{
 int ret;
 struct ocfs2_super *osb = OCFS2_SB(inode->i_sb);
 handle_t *handle = ((void*)0);

 handle = ocfs2_start_trans(osb, OCFS2_INODE_UPDATE_CREDITS);
 if (IS_ERR(handle)) {
  ret = PTR_ERR(handle);
  mlog_errno(ret);
  goto out;
 }

 ret = ocfs2_set_inode_size(handle, inode, di_bh,
       new_i_size);
 if (ret < 0)
  mlog_errno(ret);

 ocfs2_update_inode_fsync_trans(handle, inode, 0);
 ocfs2_commit_trans(osb, handle);
out:
 return ret;
}
