
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct kiocb {int ki_pos; struct file* ki_filp; } ;
struct iov_iter {int dummy; } ;
struct file {int dummy; } ;
struct fd {int file; } ;
struct cred {int dummy; } ;
typedef scalar_t__ ssize_t ;
struct TYPE_2__ {int i_sb; } ;


 int fdput (struct fd) ;
 TYPE_1__* file_inode (struct file*) ;
 int iov_iter_count (struct iov_iter*) ;
 int ovl_file_accessed (struct file*) ;
 int ovl_iocb_to_rwf (struct kiocb*) ;
 struct cred* ovl_override_creds (int ) ;
 scalar_t__ ovl_real_fdget (struct file*,struct fd*) ;
 int revert_creds (struct cred const*) ;
 scalar_t__ vfs_iter_read (int ,struct iov_iter*,int *,int ) ;

__attribute__((used)) static ssize_t ovl_read_iter(struct kiocb *iocb, struct iov_iter *iter)
{
 struct file *file = iocb->ki_filp;
 struct fd real;
 const struct cred *old_cred;
 ssize_t ret;

 if (!iov_iter_count(iter))
  return 0;

 ret = ovl_real_fdget(file, &real);
 if (ret)
  return ret;

 old_cred = ovl_override_creds(file_inode(file)->i_sb);
 ret = vfs_iter_read(real.file, iter, &iocb->ki_pos,
       ovl_iocb_to_rwf(iocb));
 revert_creds(old_cred);

 ovl_file_accessed(file);

 fdput(real);

 return ret;
}
