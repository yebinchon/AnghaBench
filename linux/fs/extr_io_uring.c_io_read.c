
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sqe_submit {int needs_lock; } ;
struct kiocb {int ki_pos; struct file* ki_filp; } ;
struct iovec {int dummy; } ;
struct iov_iter {int dummy; } ;
struct io_kiocb {int flags; int result; int ctx; struct kiocb rw; } ;
struct file {int f_mode; TYPE_1__* f_op; } ;
typedef int ssize_t ;
struct TYPE_2__ {scalar_t__ read_iter; } ;


 int EAGAIN ;
 int EBADF ;
 int FMODE_READ ;
 int READ ;
 int REQ_F_ISREG ;
 int REQ_F_LINK ;
 int REQ_F_NOWAIT ;
 int UIO_FASTIOV ;
 int call_read_iter (struct file*,struct kiocb*,struct iov_iter*) ;
 int io_async_list_note (int ,struct io_kiocb*,size_t) ;
 int io_import_iovec (int ,int ,struct sqe_submit const*,struct iovec**,struct iov_iter*) ;
 int io_prep_rw (struct io_kiocb*,struct sqe_submit const*,int) ;
 int io_rw_done (struct kiocb*,int) ;
 size_t iov_iter_count (struct iov_iter*) ;
 int kfree (struct iovec*) ;
 int loop_rw_iter (int ,struct file*,struct kiocb*,struct iov_iter*) ;
 int rw_verify_area (int ,struct file*,int *,size_t) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int io_read(struct io_kiocb *req, const struct sqe_submit *s,
     bool force_nonblock)
{
 struct iovec inline_vecs[UIO_FASTIOV], *iovec = inline_vecs;
 struct kiocb *kiocb = &req->rw;
 struct iov_iter iter;
 struct file *file;
 size_t iov_count;
 ssize_t read_size, ret;

 ret = io_prep_rw(req, s, force_nonblock);
 if (ret)
  return ret;
 file = kiocb->ki_filp;

 if (unlikely(!(file->f_mode & FMODE_READ)))
  return -EBADF;

 ret = io_import_iovec(req->ctx, READ, s, &iovec, &iter);
 if (ret < 0)
  return ret;

 read_size = ret;
 if (req->flags & REQ_F_LINK)
  req->result = read_size;

 iov_count = iov_iter_count(&iter);
 ret = rw_verify_area(READ, file, &kiocb->ki_pos, iov_count);
 if (!ret) {
  ssize_t ret2;

  if (file->f_op->read_iter)
   ret2 = call_read_iter(file, kiocb, &iter);
  else
   ret2 = loop_rw_iter(READ, file, kiocb, &iter);
  if (force_nonblock && !(req->flags & REQ_F_NOWAIT) &&
      (req->flags & REQ_F_ISREG) &&
      ret2 > 0 && ret2 < read_size)
   ret2 = -EAGAIN;

  if (!force_nonblock || ret2 != -EAGAIN) {
   io_rw_done(kiocb, ret2);
  } else {




   if (!s->needs_lock)
    io_async_list_note(READ, req, iov_count);
   ret = -EAGAIN;
  }
 }
 kfree(iovec);
 return ret;
}
