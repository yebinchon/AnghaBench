
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;
struct kiocb {int (* ki_complete ) (struct kiocb*,scalar_t__,int ) ;int ki_pos; } ;
struct bio {scalar_t__ bi_status; struct blkdev_dio* bi_private; } ;
struct blkdev_dio {int should_dirty; struct task_struct* waiter; struct bio bio; scalar_t__ multi_bio; struct kiocb* iocb; scalar_t__ size; int is_sync; int ref; } ;
typedef scalar_t__ ssize_t ;


 int WRITE_ONCE (struct task_struct*,int *) ;
 scalar_t__ atomic_dec_and_test (int *) ;
 int bio_check_pages_dirty (struct bio*) ;
 int bio_put (struct bio*) ;
 int bio_release_pages (struct bio*,int) ;
 scalar_t__ blk_status_to_errno (scalar_t__) ;
 int blk_wake_io_task (struct task_struct*) ;
 scalar_t__ likely (int) ;
 int stub1 (struct kiocb*,scalar_t__,int ) ;

__attribute__((used)) static void blkdev_bio_end_io(struct bio *bio)
{
 struct blkdev_dio *dio = bio->bi_private;
 bool should_dirty = dio->should_dirty;

 if (bio->bi_status && !dio->bio.bi_status)
  dio->bio.bi_status = bio->bi_status;

 if (!dio->multi_bio || atomic_dec_and_test(&dio->ref)) {
  if (!dio->is_sync) {
   struct kiocb *iocb = dio->iocb;
   ssize_t ret;

   if (likely(!dio->bio.bi_status)) {
    ret = dio->size;
    iocb->ki_pos += ret;
   } else {
    ret = blk_status_to_errno(dio->bio.bi_status);
   }

   dio->iocb->ki_complete(iocb, ret, 0);
   if (dio->multi_bio)
    bio_put(&dio->bio);
  } else {
   struct task_struct *waiter = dio->waiter;

   WRITE_ONCE(dio->waiter, ((void*)0));
   blk_wake_io_task(waiter);
  }
 }

 if (should_dirty) {
  bio_check_pages_dirty(bio);
 } else {
  bio_release_pages(bio, 0);
  bio_put(bio);
 }
}
