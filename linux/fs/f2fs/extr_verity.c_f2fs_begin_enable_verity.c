
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct file {int dummy; } ;


 int EBUSY ;
 int EOPNOTSUPP ;
 int FI_VERITY_IN_PROGRESS ;
 int dquot_initialize (struct inode*) ;
 int f2fs_convert_inline_inode (struct inode*) ;
 scalar_t__ f2fs_is_atomic_file (struct inode*) ;
 scalar_t__ f2fs_is_volatile_file (struct inode*) ;
 scalar_t__ f2fs_verity_in_progress (struct inode*) ;
 struct inode* file_inode (struct file*) ;
 int set_inode_flag (struct inode*,int ) ;

__attribute__((used)) static int f2fs_begin_enable_verity(struct file *filp)
{
 struct inode *inode = file_inode(filp);
 int err;

 if (f2fs_verity_in_progress(inode))
  return -EBUSY;

 if (f2fs_is_atomic_file(inode) || f2fs_is_volatile_file(inode))
  return -EOPNOTSUPP;






 err = dquot_initialize(inode);
 if (err)
  return err;

 err = f2fs_convert_inline_inode(inode);
 if (err)
  return err;

 set_inode_flag(inode, FI_VERITY_IN_PROGRESS);
 return 0;
}
