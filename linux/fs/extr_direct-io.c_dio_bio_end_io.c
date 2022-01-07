
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dio {int refcount; int bio_lock; scalar_t__ waiter; struct dio* bio_list; struct dio* bi_private; } ;
struct bio {int refcount; int bio_lock; scalar_t__ waiter; struct bio* bio_list; struct bio* bi_private; } ;


 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int wake_up_process (scalar_t__) ;

__attribute__((used)) static void dio_bio_end_io(struct bio *bio)
{
 struct dio *dio = bio->bi_private;
 unsigned long flags;

 spin_lock_irqsave(&dio->bio_lock, flags);
 bio->bi_private = dio->bio_list;
 dio->bio_list = bio;
 if (--dio->refcount == 1 && dio->waiter)
  wake_up_process(dio->waiter);
 spin_unlock_irqrestore(&dio->bio_lock, flags);
}
