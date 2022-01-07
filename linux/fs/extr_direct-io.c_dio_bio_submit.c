
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dio_submit {int logical_offset_in_bio; scalar_t__ boundary; struct bio* bio; int (* submit_io ) (struct bio*,int ,int ) ;} ;
struct dio {scalar_t__ op; int bio_cookie; int inode; int bio_disk; scalar_t__ should_dirty; scalar_t__ is_async; int bio_lock; int refcount; } ;
struct bio {int bi_disk; struct dio* bi_private; } ;


 int BLK_QC_T_NONE ;
 scalar_t__ REQ_OP_READ ;
 int bio_set_pages_dirty (struct bio*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 (struct bio*,int ,int ) ;
 int submit_bio (struct bio*) ;

__attribute__((used)) static inline void dio_bio_submit(struct dio *dio, struct dio_submit *sdio)
{
 struct bio *bio = sdio->bio;
 unsigned long flags;

 bio->bi_private = dio;

 spin_lock_irqsave(&dio->bio_lock, flags);
 dio->refcount++;
 spin_unlock_irqrestore(&dio->bio_lock, flags);

 if (dio->is_async && dio->op == REQ_OP_READ && dio->should_dirty)
  bio_set_pages_dirty(bio);

 dio->bio_disk = bio->bi_disk;

 if (sdio->submit_io) {
  sdio->submit_io(bio, dio->inode, sdio->logical_offset_in_bio);
  dio->bio_cookie = BLK_QC_T_NONE;
 } else
  dio->bio_cookie = submit_bio(bio);

 sdio->bio = ((void*)0);
 sdio->boundary = 0;
 sdio->logical_offset_in_bio = 0;
}
