
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct kiocb {int ki_flags; struct file* ki_filp; } ;
struct iov_iter {int nr_segs; } ;
struct inode {int dummy; } ;
struct TYPE_6__ {int mnt; TYPE_3__* dentry; } ;
struct file {TYPE_2__ f_path; } ;
typedef int ssize_t ;
struct TYPE_8__ {scalar_t__ ip_blkno; } ;
struct TYPE_5__ {int name; int len; } ;
struct TYPE_7__ {TYPE_1__ d_name; } ;


 int BUG_ON (int) ;
 int EAGAIN ;
 int EINVAL ;
 int EIOCBQUEUED ;
 int EOPNOTSUPP ;
 int IOCB_DIRECT ;
 int IOCB_NOWAIT ;
 TYPE_4__* OCFS2_I (struct inode*) ;
 struct inode* file_inode (struct file*) ;
 int generic_file_read_iter (struct kiocb*,struct iov_iter*) ;
 int mlog_errno (int) ;
 int ocfs2_inode_lock_atime (struct inode*,int ,int*,int) ;
 int ocfs2_inode_unlock (struct inode*,int) ;
 int ocfs2_iocb_is_rw_locked (struct kiocb*) ;
 int ocfs2_iocb_set_rw_locked (struct kiocb*,int) ;
 int ocfs2_rw_lock (struct inode*,int ) ;
 int ocfs2_rw_unlock (struct inode*,int) ;
 int ocfs2_try_rw_lock (struct inode*,int ) ;
 int trace_generic_file_read_iter_ret (int) ;
 int trace_ocfs2_file_read_iter (struct inode*,struct file*,TYPE_3__*,unsigned long long,int ,int ,int ) ;

__attribute__((used)) static ssize_t ocfs2_file_read_iter(struct kiocb *iocb,
       struct iov_iter *to)
{
 int ret = 0, rw_level = -1, lock_level = 0;
 struct file *filp = iocb->ki_filp;
 struct inode *inode = file_inode(filp);
 int direct_io = iocb->ki_flags & IOCB_DIRECT ? 1 : 0;
 int nowait = iocb->ki_flags & IOCB_NOWAIT ? 1 : 0;

 trace_ocfs2_file_read_iter(inode, filp, filp->f_path.dentry,
   (unsigned long long)OCFS2_I(inode)->ip_blkno,
   filp->f_path.dentry->d_name.len,
   filp->f_path.dentry->d_name.name,
   to->nr_segs);


 if (!inode) {
  ret = -EINVAL;
  mlog_errno(ret);
  goto bail;
 }

 if (!direct_io && nowait)
  return -EOPNOTSUPP;





 if (direct_io) {
  if (nowait)
   ret = ocfs2_try_rw_lock(inode, 0);
  else
   ret = ocfs2_rw_lock(inode, 0);

  if (ret < 0) {
   if (ret != -EAGAIN)
    mlog_errno(ret);
   goto bail;
  }
  rw_level = 0;

  ocfs2_iocb_set_rw_locked(iocb, rw_level);
 }
 ret = ocfs2_inode_lock_atime(inode, filp->f_path.mnt, &lock_level,
         !nowait);
 if (ret < 0) {
  if (ret != -EAGAIN)
   mlog_errno(ret);
  goto bail;
 }
 ocfs2_inode_unlock(inode, lock_level);

 ret = generic_file_read_iter(iocb, to);
 trace_generic_file_read_iter_ret(ret);


 BUG_ON(ret == -EIOCBQUEUED && !direct_io);


 if (ret == -EIOCBQUEUED || !ocfs2_iocb_is_rw_locked(iocb)) {
  rw_level = -1;
 }

bail:
 if (rw_level != -1)
  ocfs2_rw_unlock(inode, rw_level);

 return ret;
}
