
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct file {int dummy; } ;
typedef int loff_t ;


 int EINVAL ;





 struct inode* file_inode (struct file*) ;
 int fuse_lseek (struct file*,int ,int) ;
 int fuse_update_attributes (struct inode*,struct file*) ;
 int generic_file_llseek (struct file*,int ,int) ;
 int inode_lock (struct inode*) ;
 int inode_unlock (struct inode*) ;

__attribute__((used)) static loff_t fuse_file_llseek(struct file *file, loff_t offset, int whence)
{
 loff_t retval;
 struct inode *inode = file_inode(file);

 switch (whence) {
 case 128:
 case 132:

  retval = generic_file_llseek(file, offset, whence);
  break;
 case 130:
  inode_lock(inode);
  retval = fuse_update_attributes(inode, file);
  if (!retval)
   retval = generic_file_llseek(file, offset, whence);
  inode_unlock(inode);
  break;
 case 129:
 case 131:
  inode_lock(inode);
  retval = fuse_lseek(file, offset, whence);
  inode_unlock(inode);
  break;
 default:
  retval = -EINVAL;
 }

 return retval;
}
