
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct discard_cmd {scalar_t__ state; int lock; int wait; int bio_ref; int error; } ;
struct bio {int bi_status; scalar_t__ bi_private; } ;


 scalar_t__ D_DONE ;
 scalar_t__ D_SUBMIT ;
 int bio_put (struct bio*) ;
 int blk_status_to_errno (int ) ;
 int complete_all (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void f2fs_submit_discard_endio(struct bio *bio)
{
 struct discard_cmd *dc = (struct discard_cmd *)bio->bi_private;
 unsigned long flags;

 dc->error = blk_status_to_errno(bio->bi_status);

 spin_lock_irqsave(&dc->lock, flags);
 dc->bio_ref--;
 if (!dc->bio_ref && dc->state == D_SUBMIT) {
  dc->state = D_DONE;
  complete_all(&dc->wait);
 }
 spin_unlock_irqrestore(&dc->lock, flags);
 bio_put(bio);
}
