
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int i_ctime; int i_mtime; } ;
struct file {int f_flags; int f_path; } ;


 int O_NOATIME ;
 struct inode* file_inode (struct file*) ;
 struct inode* ovl_inode_upper (struct inode*) ;
 int timespec64_equal (int *,int *) ;
 int touch_atime (int *) ;

__attribute__((used)) static void ovl_file_accessed(struct file *file)
{
 struct inode *inode, *upperinode;

 if (file->f_flags & O_NOATIME)
  return;

 inode = file_inode(file);
 upperinode = ovl_inode_upper(inode);

 if (!upperinode)
  return;

 if ((!timespec64_equal(&inode->i_mtime, &upperinode->i_mtime) ||
      !timespec64_equal(&inode->i_ctime, &upperinode->i_ctime))) {
  inode->i_mtime = upperinode->i_mtime;
  inode->i_ctime = upperinode->i_ctime;
 }

 touch_atime(&file->f_path);
}
