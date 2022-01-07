
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int i_ino; } ;
struct file {int f_mode; } ;


 int EPERM ;
 int FMODE_WRITE ;
 int IS_VERITY (struct inode*) ;
 int ensure_verity_info (struct inode*) ;
 int pr_debug (char*,int ) ;

int fsverity_file_open(struct inode *inode, struct file *filp)
{
 if (!IS_VERITY(inode))
  return 0;

 if (filp->f_mode & FMODE_WRITE) {
  pr_debug("Denying opening verity file (ino %lu) for write\n",
    inode->i_ino);
  return -EPERM;
 }

 return ensure_verity_info(inode);
}
