
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct dio {int refcount; int bio_lock; struct bio* bio_list; int * waiter; int bio_cookie; TYPE_2__* bio_disk; TYPE_1__* iocb; } ;
struct bio {struct bio* bi_private; } ;
struct TYPE_4__ {int queue; } ;
struct TYPE_3__ {int ki_flags; } ;


 int IOCB_HIPRI ;
 int TASK_UNINTERRUPTIBLE ;
 int __set_current_state (int ) ;
 int blk_poll (int ,int ,int) ;
 int * current ;
 int io_schedule () ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static struct bio *dio_await_one(struct dio *dio)
{
 unsigned long flags;
 struct bio *bio = ((void*)0);

 spin_lock_irqsave(&dio->bio_lock, flags);







 while (dio->refcount > 1 && dio->bio_list == ((void*)0)) {
  __set_current_state(TASK_UNINTERRUPTIBLE);
  dio->waiter = current;
  spin_unlock_irqrestore(&dio->bio_lock, flags);
  if (!(dio->iocb->ki_flags & IOCB_HIPRI) ||
      !blk_poll(dio->bio_disk->queue, dio->bio_cookie, 1))
   io_schedule();

  spin_lock_irqsave(&dio->bio_lock, flags);
  dio->waiter = ((void*)0);
 }
 if (dio->bio_list) {
  bio = dio->bio_list;
  dio->bio_list = bio->bi_private;
 }
 spin_unlock_irqrestore(&dio->bio_lock, flags);
 return bio;
}
