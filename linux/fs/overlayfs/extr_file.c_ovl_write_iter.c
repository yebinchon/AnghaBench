
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kiocb {int ki_pos; struct file* ki_filp; } ;
struct iov_iter {int dummy; } ;
struct inode {int i_sb; } ;
struct file {int dummy; } ;
struct fd {int file; } ;
struct cred {int dummy; } ;
typedef scalar_t__ ssize_t ;


 int fdput (struct fd) ;
 int file_end_write (int ) ;
 struct inode* file_inode (struct file*) ;
 scalar_t__ file_remove_privs (struct file*) ;
 int file_start_write (int ) ;
 int inode_lock (struct inode*) ;
 int inode_unlock (struct inode*) ;
 int iov_iter_count (struct iov_iter*) ;
 int ovl_copyattr (int ,struct inode*) ;
 int ovl_inode_real (struct inode*) ;
 int ovl_iocb_to_rwf (struct kiocb*) ;
 struct cred* ovl_override_creds (int ) ;
 scalar_t__ ovl_real_fdget (struct file*,struct fd*) ;
 int revert_creds (struct cred const*) ;
 scalar_t__ vfs_iter_write (int ,struct iov_iter*,int *,int ) ;

__attribute__((used)) static ssize_t ovl_write_iter(struct kiocb *iocb, struct iov_iter *iter)
{
 struct file *file = iocb->ki_filp;
 struct inode *inode = file_inode(file);
 struct fd real;
 const struct cred *old_cred;
 ssize_t ret;

 if (!iov_iter_count(iter))
  return 0;

 inode_lock(inode);

 ovl_copyattr(ovl_inode_real(inode), inode);
 ret = file_remove_privs(file);
 if (ret)
  goto out_unlock;

 ret = ovl_real_fdget(file, &real);
 if (ret)
  goto out_unlock;

 old_cred = ovl_override_creds(file_inode(file)->i_sb);
 file_start_write(real.file);
 ret = vfs_iter_write(real.file, iter, &iocb->ki_pos,
        ovl_iocb_to_rwf(iocb));
 file_end_write(real.file);
 revert_creds(old_cred);


 ovl_copyattr(ovl_inode_real(inode), inode);

 fdput(real);

out_unlock:
 inode_unlock(inode);

 return ret;
}
