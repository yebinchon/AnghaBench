
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kiocb {int ki_flags; } ;


 int IOCB_DSYNC ;
 unsigned int REQ_FUA ;
 unsigned int REQ_IDLE ;
 unsigned int REQ_OP_WRITE ;
 unsigned int REQ_SYNC ;

__attribute__((used)) static unsigned int dio_bio_write_op(struct kiocb *iocb)
{
 unsigned int op = REQ_OP_WRITE | REQ_SYNC | REQ_IDLE;


 if (iocb->ki_flags & IOCB_DSYNC)
  op |= REQ_FUA;
 return op;
}
