
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct dio {unsigned long refcount; scalar_t__ op; int complete_work; TYPE_3__* inode; scalar_t__ defer_completion; scalar_t__ result; int bio_lock; scalar_t__ waiter; } ;
struct bio {struct dio* bi_private; } ;
struct TYPE_6__ {TYPE_2__* i_sb; TYPE_1__* i_mapping; } ;
struct TYPE_5__ {int s_dio_done_wq; } ;
struct TYPE_4__ {scalar_t__ nrpages; } ;


 int DIO_COMPLETE_ASYNC ;
 int INIT_WORK (int *,int ) ;
 scalar_t__ REQ_OP_WRITE ;
 int dio_aio_complete_work ;
 int dio_bio_complete (struct dio*,struct bio*) ;
 int dio_complete (struct dio*,int ,int ) ;
 int queue_work (int ,int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int wake_up_process (scalar_t__) ;

__attribute__((used)) static void dio_bio_end_aio(struct bio *bio)
{
 struct dio *dio = bio->bi_private;
 unsigned long remaining;
 unsigned long flags;
 bool defer_completion = 0;


 dio_bio_complete(dio, bio);

 spin_lock_irqsave(&dio->bio_lock, flags);
 remaining = --dio->refcount;
 if (remaining == 1 && dio->waiter)
  wake_up_process(dio->waiter);
 spin_unlock_irqrestore(&dio->bio_lock, flags);

 if (remaining == 0) {
  if (dio->result)
   defer_completion = dio->defer_completion ||
        (dio->op == REQ_OP_WRITE &&
         dio->inode->i_mapping->nrpages);
  if (defer_completion) {
   INIT_WORK(&dio->complete_work, dio_aio_complete_work);
   queue_work(dio->inode->i_sb->s_dio_done_wq,
       &dio->complete_work);
  } else {
   dio_complete(dio, 0, DIO_COMPLETE_ASYNC);
  }
 }
}
