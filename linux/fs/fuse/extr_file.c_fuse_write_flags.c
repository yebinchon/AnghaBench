
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct kiocb {int ki_flags; TYPE_1__* ki_filp; } ;
struct TYPE_2__ {unsigned int f_flags; } ;


 int IOCB_DSYNC ;
 int IOCB_SYNC ;
 unsigned int O_DSYNC ;
 unsigned int O_SYNC ;

__attribute__((used)) static unsigned int fuse_write_flags(struct kiocb *iocb)
{
 unsigned int flags = iocb->ki_filp->f_flags;

 if (iocb->ki_flags & IOCB_DSYNC)
  flags |= O_DSYNC;
 if (iocb->ki_flags & IOCB_SYNC)
  flags |= O_SYNC;

 return flags;
}
