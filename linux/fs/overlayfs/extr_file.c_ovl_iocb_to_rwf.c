
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kiocb {int ki_flags; } ;
typedef int rwf_t ;


 int IOCB_DSYNC ;
 int IOCB_HIPRI ;
 int IOCB_NOWAIT ;
 int IOCB_SYNC ;
 int RWF_DSYNC ;
 int RWF_HIPRI ;
 int RWF_NOWAIT ;
 int RWF_SYNC ;

__attribute__((used)) static rwf_t ovl_iocb_to_rwf(struct kiocb *iocb)
{
 int ifl = iocb->ki_flags;
 rwf_t flags = 0;

 if (ifl & IOCB_NOWAIT)
  flags |= RWF_NOWAIT;
 if (ifl & IOCB_HIPRI)
  flags |= RWF_HIPRI;
 if (ifl & IOCB_DSYNC)
  flags |= RWF_DSYNC;
 if (ifl & IOCB_SYNC)
  flags |= RWF_SYNC;

 return flags;
}
