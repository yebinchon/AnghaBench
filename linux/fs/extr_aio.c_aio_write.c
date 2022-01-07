
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct kiocb {int ki_flags; int ki_pos; struct file* ki_filp; } ;
struct iovec {int dummy; } ;
struct iov_iter {int dummy; } ;
struct iocb {int dummy; } ;
struct file {int f_mode; TYPE_1__* f_op; } ;
struct TYPE_4__ {int i_sb; int i_mode; } ;
struct TYPE_3__ {int write_iter; } ;


 int EBADF ;
 int EINVAL ;
 int FMODE_WRITE ;
 int IOCB_WRITE ;
 int SB_FREEZE_WRITE ;
 scalar_t__ S_ISREG (int ) ;
 int UIO_FASTIOV ;
 int WRITE ;
 int __sb_start_write (int ,int ,int) ;
 int __sb_writers_release (int ,int ) ;
 int aio_prep_rw (struct kiocb*,struct iocb const*) ;
 int aio_rw_done (struct kiocb*,int ) ;
 int aio_setup_rw (int ,struct iocb const*,struct iovec**,int,int,struct iov_iter*) ;
 int call_write_iter (struct file*,struct kiocb*,struct iov_iter*) ;
 TYPE_2__* file_inode (struct file*) ;
 int iov_iter_count (struct iov_iter*) ;
 int kfree (struct iovec*) ;
 int rw_verify_area (int ,struct file*,int *,int ) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int aio_write(struct kiocb *req, const struct iocb *iocb,
    bool vectored, bool compat)
{
 struct iovec inline_vecs[UIO_FASTIOV], *iovec = inline_vecs;
 struct iov_iter iter;
 struct file *file;
 int ret;

 ret = aio_prep_rw(req, iocb);
 if (ret)
  return ret;
 file = req->ki_filp;

 if (unlikely(!(file->f_mode & FMODE_WRITE)))
  return -EBADF;
 if (unlikely(!file->f_op->write_iter))
  return -EINVAL;

 ret = aio_setup_rw(WRITE, iocb, &iovec, vectored, compat, &iter);
 if (ret < 0)
  return ret;
 ret = rw_verify_area(WRITE, file, &req->ki_pos, iov_iter_count(&iter));
 if (!ret) {







  if (S_ISREG(file_inode(file)->i_mode)) {
   __sb_start_write(file_inode(file)->i_sb, SB_FREEZE_WRITE, 1);
   __sb_writers_release(file_inode(file)->i_sb, SB_FREEZE_WRITE);
  }
  req->ki_flags |= IOCB_WRITE;
  aio_rw_done(req, call_write_iter(file, req, &iter));
 }
 kfree(iovec);
 return ret;
}
