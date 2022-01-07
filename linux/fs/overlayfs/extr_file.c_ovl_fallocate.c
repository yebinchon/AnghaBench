
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int i_sb; } ;
struct file {int dummy; } ;
struct fd {int file; } ;
struct cred {int dummy; } ;
typedef int loff_t ;


 int fdput (struct fd) ;
 struct inode* file_inode (struct file*) ;
 int ovl_copyattr (int ,struct inode*) ;
 int ovl_inode_real (struct inode*) ;
 struct cred* ovl_override_creds (int ) ;
 int ovl_real_fdget (struct file*,struct fd*) ;
 int revert_creds (struct cred const*) ;
 int vfs_fallocate (int ,int,int ,int ) ;

__attribute__((used)) static long ovl_fallocate(struct file *file, int mode, loff_t offset, loff_t len)
{
 struct inode *inode = file_inode(file);
 struct fd real;
 const struct cred *old_cred;
 int ret;

 ret = ovl_real_fdget(file, &real);
 if (ret)
  return ret;

 old_cred = ovl_override_creds(file_inode(file)->i_sb);
 ret = vfs_fallocate(real.file, mode, offset, len);
 revert_creds(old_cred);


 ovl_copyattr(ovl_inode_real(inode), inode);

 fdput(real);

 return ret;
}
