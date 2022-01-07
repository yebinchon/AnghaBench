
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int i_sb; } ;
struct file {scalar_t__ f_pos; } ;
struct fd {TYPE_1__* file; } ;
struct cred {int dummy; } ;
typedef scalar_t__ ssize_t ;
typedef scalar_t__ loff_t ;
struct TYPE_2__ {scalar_t__ f_pos; } ;


 int SEEK_CUR ;
 int SEEK_SET ;
 int fdput (struct fd) ;
 struct inode* file_inode (struct file*) ;
 int inode_lock (struct inode*) ;
 int inode_unlock (struct inode*) ;
 struct cred* ovl_override_creds (int ) ;
 scalar_t__ ovl_real_fdget (struct file*,struct fd*) ;
 int revert_creds (struct cred const*) ;
 scalar_t__ vfs_llseek (TYPE_1__*,scalar_t__,int) ;
 scalar_t__ vfs_setpos (struct file*,int ,int ) ;

__attribute__((used)) static loff_t ovl_llseek(struct file *file, loff_t offset, int whence)
{
 struct inode *inode = file_inode(file);
 struct fd real;
 const struct cred *old_cred;
 ssize_t ret;





 if (offset == 0) {
  if (whence == SEEK_CUR)
   return file->f_pos;

  if (whence == SEEK_SET)
   return vfs_setpos(file, 0, 0);
 }

 ret = ovl_real_fdget(file, &real);
 if (ret)
  return ret;
 inode_lock(inode);
 real.file->f_pos = file->f_pos;

 old_cred = ovl_override_creds(inode->i_sb);
 ret = vfs_llseek(real.file, offset, whence);
 revert_creds(old_cred);

 file->f_pos = real.file->f_pos;
 inode_unlock(inode);

 fdput(real);

 return ret;
}
