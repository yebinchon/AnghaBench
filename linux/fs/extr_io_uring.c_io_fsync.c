
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct io_uring_sqe {int user_data; int fsync_flags; int len; int off; } ;
struct TYPE_2__ {int ki_filp; } ;
struct io_kiocb {int flags; int ctx; TYPE_1__ rw; } ;
typedef scalar_t__ loff_t ;


 int EAGAIN ;
 int EINVAL ;
 unsigned int IORING_FSYNC_DATASYNC ;
 scalar_t__ LLONG_MAX ;
 void* READ_ONCE (int ) ;
 int REQ_F_FAIL_LINK ;
 int REQ_F_LINK ;
 int io_cqring_add_event (int ,int ,int) ;
 int io_prep_fsync (struct io_kiocb*,struct io_uring_sqe const*) ;
 int io_put_req (struct io_kiocb*) ;
 scalar_t__ unlikely (unsigned int) ;
 int vfs_fsync_range (int ,scalar_t__,scalar_t__,unsigned int) ;

__attribute__((used)) static int io_fsync(struct io_kiocb *req, const struct io_uring_sqe *sqe,
      bool force_nonblock)
{
 loff_t sqe_off = READ_ONCE(sqe->off);
 loff_t sqe_len = READ_ONCE(sqe->len);
 loff_t end = sqe_off + sqe_len;
 unsigned fsync_flags;
 int ret;

 fsync_flags = READ_ONCE(sqe->fsync_flags);
 if (unlikely(fsync_flags & ~IORING_FSYNC_DATASYNC))
  return -EINVAL;

 ret = io_prep_fsync(req, sqe);
 if (ret)
  return ret;


 if (force_nonblock)
  return -EAGAIN;

 ret = vfs_fsync_range(req->rw.ki_filp, sqe_off,
    end > 0 ? end : LLONG_MAX,
    fsync_flags & IORING_FSYNC_DATASYNC);

 if (ret < 0 && (req->flags & REQ_F_LINK))
  req->flags |= REQ_F_FAIL_LINK;
 io_cqring_add_event(req->ctx, sqe->user_data, ret);
 io_put_req(req);
 return 0;
}
