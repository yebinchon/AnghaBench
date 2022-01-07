
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request_queue {int dummy; } ;
struct kiocb {int ki_cookie; int private; } ;


 struct request_queue* READ_ONCE (int ) ;
 int blk_poll (struct request_queue*,struct request_queue*,int) ;

int iomap_dio_iopoll(struct kiocb *kiocb, bool spin)
{
 struct request_queue *q = READ_ONCE(kiocb->private);

 if (!q)
  return 0;
 return blk_poll(q, READ_ONCE(kiocb->ki_cookie), spin);
}
