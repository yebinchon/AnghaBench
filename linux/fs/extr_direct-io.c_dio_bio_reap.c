
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dio_submit {scalar_t__ reap_counter; } ;
struct dio {int bio_lock; struct bio* bio_list; } ;
struct bio {struct bio* bi_private; } ;


 int blk_status_to_errno (int ) ;
 int dio_bio_complete (struct dio*,struct bio*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static inline int dio_bio_reap(struct dio *dio, struct dio_submit *sdio)
{
 int ret = 0;

 if (sdio->reap_counter++ >= 64) {
  while (dio->bio_list) {
   unsigned long flags;
   struct bio *bio;
   int ret2;

   spin_lock_irqsave(&dio->bio_lock, flags);
   bio = dio->bio_list;
   dio->bio_list = bio->bi_private;
   spin_unlock_irqrestore(&dio->bio_lock, flags);
   ret2 = blk_status_to_errno(dio_bio_complete(dio, bio));
   if (ret == 0)
    ret = ret2;
  }
  sdio->reap_counter = 0;
 }
 return ret;
}
