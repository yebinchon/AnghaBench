
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct inode {int i_mtime; int i_ctime; int i_blocks; } ;
struct buffer_head {int dummy; } ;
typedef int handle_t ;


 int current_time (struct inode*) ;
 int i_size_write (struct inode*,int ) ;
 int mlog_errno (int) ;
 int ocfs2_inode_sector_count (struct inode*) ;
 int ocfs2_mark_inode_dirty (int *,struct inode*,struct buffer_head*) ;

int ocfs2_set_inode_size(handle_t *handle,
    struct inode *inode,
    struct buffer_head *fe_bh,
    u64 new_i_size)
{
 int status;

 i_size_write(inode, new_i_size);
 inode->i_blocks = ocfs2_inode_sector_count(inode);
 inode->i_ctime = inode->i_mtime = current_time(inode);

 status = ocfs2_mark_inode_dirty(handle, inode, fe_bh);
 if (status < 0) {
  mlog_errno(status);
  goto bail;
 }

bail:
 return status;
}
