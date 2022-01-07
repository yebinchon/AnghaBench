
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct iocb {scalar_t__ aio_rw_flags; scalar_t__ aio_nbytes; scalar_t__ aio_offset; scalar_t__ aio_buf; } ;
struct fsync_iocb {int datasync; int work; TYPE_2__* file; } ;
struct TYPE_4__ {TYPE_1__* f_op; } ;
struct TYPE_3__ {int fsync; } ;


 int EINVAL ;
 int INIT_WORK (int *,int ) ;
 int aio_fsync_work ;
 int schedule_work (int *) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int aio_fsync(struct fsync_iocb *req, const struct iocb *iocb,
       bool datasync)
{
 if (unlikely(iocb->aio_buf || iocb->aio_offset || iocb->aio_nbytes ||
   iocb->aio_rw_flags))
  return -EINVAL;

 if (unlikely(!req->file->f_op->fsync))
  return -EINVAL;

 req->datasync = datasync;
 INIT_WORK(&req->work, aio_fsync_work);
 schedule_work(&req->work);
 return 0;
}
