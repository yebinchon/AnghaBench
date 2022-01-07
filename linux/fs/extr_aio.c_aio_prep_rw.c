
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kiocb {int ki_flags; int ki_ioprio; int ki_filp; int ki_hint; int ki_pos; int * private; int ki_complete; } ;
struct iocb {int aio_flags; int aio_rw_flags; int aio_reqprio; int aio_offset; } ;


 int IOCB_EVENTFD ;
 int IOCB_FLAG_IOPRIO ;
 int IOCB_FLAG_RESFD ;
 int IOCB_HIPRI ;
 int aio_complete_rw ;
 int file_write_hint (int ) ;
 int get_current_ioprio () ;
 int iocb_flags (int ) ;
 int ioprio_check_cap (int ) ;
 int ki_hint_validate (int ) ;
 int kiocb_set_rw_flags (struct kiocb*,int ) ;
 int pr_debug (char*,int) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int aio_prep_rw(struct kiocb *req, const struct iocb *iocb)
{
 int ret;

 req->ki_complete = aio_complete_rw;
 req->private = ((void*)0);
 req->ki_pos = iocb->aio_offset;
 req->ki_flags = iocb_flags(req->ki_filp);
 if (iocb->aio_flags & IOCB_FLAG_RESFD)
  req->ki_flags |= IOCB_EVENTFD;
 req->ki_hint = ki_hint_validate(file_write_hint(req->ki_filp));
 if (iocb->aio_flags & IOCB_FLAG_IOPRIO) {





  ret = ioprio_check_cap(iocb->aio_reqprio);
  if (ret) {
   pr_debug("aio ioprio check cap error: %d\n", ret);
   return ret;
  }

  req->ki_ioprio = iocb->aio_reqprio;
 } else
  req->ki_ioprio = get_current_ioprio();

 ret = kiocb_set_rw_flags(req, iocb->aio_rw_flags);
 if (unlikely(ret))
  return ret;

 req->ki_flags &= ~IOCB_HIPRI;
 return 0;
}
