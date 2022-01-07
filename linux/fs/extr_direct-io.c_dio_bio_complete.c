
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dio {scalar_t__ op; scalar_t__ is_async; int io_error; int should_dirty; } ;
struct bio {scalar_t__ bi_status; int bi_opf; } ;
typedef scalar_t__ blk_status_t ;


 scalar_t__ BLK_STS_AGAIN ;
 int EAGAIN ;
 int EIO ;
 int REQ_NOWAIT ;
 scalar_t__ REQ_OP_READ ;
 int bio_check_pages_dirty (struct bio*) ;
 int bio_put (struct bio*) ;
 int bio_release_pages (struct bio*,int) ;

__attribute__((used)) static blk_status_t dio_bio_complete(struct dio *dio, struct bio *bio)
{
 blk_status_t err = bio->bi_status;
 bool should_dirty = dio->op == REQ_OP_READ && dio->should_dirty;

 if (err) {
  if (err == BLK_STS_AGAIN && (bio->bi_opf & REQ_NOWAIT))
   dio->io_error = -EAGAIN;
  else
   dio->io_error = -EIO;
 }

 if (dio->is_async && should_dirty) {
  bio_check_pages_dirty(bio);
 } else {
  bio_release_pages(bio, should_dirty);
  bio_put(bio);
 }
 return err;
}
