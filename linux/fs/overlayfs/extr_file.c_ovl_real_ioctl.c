
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct file {int dummy; } ;
struct fd {int file; } ;
struct cred {int dummy; } ;
struct TYPE_2__ {int i_sb; } ;


 int fdput (struct fd) ;
 TYPE_1__* file_inode (struct file*) ;
 struct cred* ovl_override_creds (int ) ;
 long ovl_real_fdget (struct file*,struct fd*) ;
 int revert_creds (struct cred const*) ;
 long vfs_ioctl (int ,unsigned int,unsigned long) ;

__attribute__((used)) static long ovl_real_ioctl(struct file *file, unsigned int cmd,
      unsigned long arg)
{
 struct fd real;
 const struct cred *old_cred;
 long ret;

 ret = ovl_real_fdget(file, &real);
 if (ret)
  return ret;

 old_cred = ovl_override_creds(file_inode(file)->i_sb);
 ret = vfs_ioctl(real.file, cmd, arg);
 revert_creds(old_cred);

 fdput(real);

 return ret;
}
