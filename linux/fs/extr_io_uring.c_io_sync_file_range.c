
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct io_uring_sqe {int user_data; int sync_range_flags; int len; int off; } ;
struct TYPE_2__ {int ki_filp; } ;
struct io_kiocb {int flags; int ctx; TYPE_1__ rw; } ;
typedef void* loff_t ;


 int EAGAIN ;
 void* READ_ONCE (int ) ;
 int REQ_F_FAIL_LINK ;
 int REQ_F_LINK ;
 int io_cqring_add_event (int ,int ,int) ;
 int io_prep_sfr (struct io_kiocb*,struct io_uring_sqe const*) ;
 int io_put_req (struct io_kiocb*) ;
 int sync_file_range (int ,void*,void*,unsigned int) ;

__attribute__((used)) static int io_sync_file_range(struct io_kiocb *req,
         const struct io_uring_sqe *sqe,
         bool force_nonblock)
{
 loff_t sqe_off;
 loff_t sqe_len;
 unsigned flags;
 int ret;

 ret = io_prep_sfr(req, sqe);
 if (ret)
  return ret;


 if (force_nonblock)
  return -EAGAIN;

 sqe_off = READ_ONCE(sqe->off);
 sqe_len = READ_ONCE(sqe->len);
 flags = READ_ONCE(sqe->sync_range_flags);

 ret = sync_file_range(req->rw.ki_filp, sqe_off, sqe_len, flags);

 if (ret < 0 && (req->flags & REQ_F_LINK))
  req->flags |= REQ_F_FAIL_LINK;
 io_cqring_add_event(req->ctx, sqe->user_data, ret);
 io_put_req(req);
 return 0;
}
