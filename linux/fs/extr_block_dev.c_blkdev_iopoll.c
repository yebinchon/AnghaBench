
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct request_queue {int dummy; } ;
struct kiocb {int ki_cookie; TYPE_2__* ki_filp; } ;
struct block_device {int dummy; } ;
struct TYPE_4__ {TYPE_1__* f_mapping; } ;
struct TYPE_3__ {int host; } ;


 struct block_device* I_BDEV (int ) ;
 int READ_ONCE (int ) ;
 struct request_queue* bdev_get_queue (struct block_device*) ;
 int blk_poll (struct request_queue*,int ,int) ;

__attribute__((used)) static int blkdev_iopoll(struct kiocb *kiocb, bool wait)
{
 struct block_device *bdev = I_BDEV(kiocb->ki_filp->f_mapping->host);
 struct request_queue *q = bdev_get_queue(bdev);

 return blk_poll(q, READ_ONCE(kiocb->ki_cookie), wait);
}
