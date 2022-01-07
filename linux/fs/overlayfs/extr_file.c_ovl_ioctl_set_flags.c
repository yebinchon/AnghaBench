
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int i_flags; } ;
struct file {int dummy; } ;


 int CAP_LINUX_IMMUTABLE ;
 long EACCES ;
 long EPERM ;
 int O_WRONLY ;
 unsigned int READ_ONCE (int ) ;
 unsigned int S_APPEND ;
 unsigned int S_IMMUTABLE ;
 int capable (int ) ;
 int file_dentry (struct file*) ;
 struct inode* file_inode (struct file*) ;
 int inode_lock (struct inode*) ;
 int inode_owner_or_capable (struct inode*) ;
 int inode_unlock (struct inode*) ;
 int mnt_drop_write_file (struct file*) ;
 long mnt_want_write_file (struct file*) ;
 int ovl_copyflags (int ,struct inode*) ;
 int ovl_inode_real (struct inode*) ;
 long ovl_maybe_copy_up (int ,int ) ;
 long ovl_real_ioctl (struct file*,unsigned int,unsigned long) ;

__attribute__((used)) static long ovl_ioctl_set_flags(struct file *file, unsigned int cmd,
    unsigned long arg, unsigned int iflags)
{
 long ret;
 struct inode *inode = file_inode(file);
 unsigned int old_iflags;

 if (!inode_owner_or_capable(inode))
  return -EACCES;

 ret = mnt_want_write_file(file);
 if (ret)
  return ret;

 inode_lock(inode);


 ret = -EPERM;
 old_iflags = READ_ONCE(inode->i_flags);
 if (((iflags ^ old_iflags) & (S_APPEND | S_IMMUTABLE)) &&
     !capable(CAP_LINUX_IMMUTABLE))
  goto unlock;

 ret = ovl_maybe_copy_up(file_dentry(file), O_WRONLY);
 if (ret)
  goto unlock;

 ret = ovl_real_ioctl(file, cmd, arg);

 ovl_copyflags(ovl_inode_real(inode), inode);
unlock:
 inode_unlock(inode);

 mnt_drop_write_file(file);

 return ret;

}
