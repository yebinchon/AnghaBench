
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct file {int f_mode; } ;


 int FMODE_NOWAIT ;
 int dquot_file_open (struct inode*,struct file*) ;
 int fscrypt_file_open (struct inode*,struct file*) ;
 int fsverity_file_open (struct inode*,struct file*) ;

__attribute__((used)) static int f2fs_file_open(struct inode *inode, struct file *filp)
{
 int err = fscrypt_file_open(inode, filp);

 if (err)
  return err;

 err = fsverity_file_open(inode, filp);
 if (err)
  return err;

 filp->f_mode |= FMODE_NOWAIT;

 return dquot_file_open(inode, filp);
}
