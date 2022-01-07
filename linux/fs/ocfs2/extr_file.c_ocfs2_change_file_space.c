
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ocfs2_super {int dummy; } ;
struct ocfs2_space_resv {int dummy; } ;
struct inode {int i_mode; int i_sb; } ;
struct file {int f_mode; int f_pos; } ;


 int EBADF ;
 int EINVAL ;
 int ENOTTY ;
 int FMODE_WRITE ;
 unsigned int OCFS2_IOC_RESVSP ;
 unsigned int OCFS2_IOC_RESVSP64 ;
 unsigned int OCFS2_IOC_UNRESVSP ;
 unsigned int OCFS2_IOC_UNRESVSP64 ;
 struct ocfs2_super* OCFS2_SB (int ) ;
 int S_ISREG (int ) ;
 int __ocfs2_change_file_space (struct file*,struct inode*,int ,unsigned int,struct ocfs2_space_resv*,int ) ;
 struct inode* file_inode (struct file*) ;
 int mnt_drop_write_file (struct file*) ;
 int mnt_want_write_file (struct file*) ;
 int ocfs2_sparse_alloc (struct ocfs2_super*) ;
 int ocfs2_writes_unwritten_extents (struct ocfs2_super*) ;

int ocfs2_change_file_space(struct file *file, unsigned int cmd,
       struct ocfs2_space_resv *sr)
{
 struct inode *inode = file_inode(file);
 struct ocfs2_super *osb = OCFS2_SB(inode->i_sb);
 int ret;

 if ((cmd == OCFS2_IOC_RESVSP || cmd == OCFS2_IOC_RESVSP64) &&
     !ocfs2_writes_unwritten_extents(osb))
  return -ENOTTY;
 else if ((cmd == OCFS2_IOC_UNRESVSP || cmd == OCFS2_IOC_UNRESVSP64) &&
   !ocfs2_sparse_alloc(osb))
  return -ENOTTY;

 if (!S_ISREG(inode->i_mode))
  return -EINVAL;

 if (!(file->f_mode & FMODE_WRITE))
  return -EBADF;

 ret = mnt_want_write_file(file);
 if (ret)
  return ret;
 ret = __ocfs2_change_file_space(file, inode, file->f_pos, cmd, sr, 0);
 mnt_drop_write_file(file);
 return ret;
}
