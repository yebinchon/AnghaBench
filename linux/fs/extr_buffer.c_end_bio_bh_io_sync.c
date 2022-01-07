
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct buffer_head {int (* b_end_io ) (struct buffer_head*,int) ;int b_state; } ;
struct bio {int bi_status; struct buffer_head* bi_private; } ;


 int BH_Quiet ;
 int BIO_QUIET ;
 int bio_flagged (struct bio*,int ) ;
 int bio_put (struct bio*) ;
 int set_bit (int ,int *) ;
 int stub1 (struct buffer_head*,int) ;
 scalar_t__ unlikely (int ) ;

__attribute__((used)) static void end_bio_bh_io_sync(struct bio *bio)
{
 struct buffer_head *bh = bio->bi_private;

 if (unlikely(bio_flagged(bio, BIO_QUIET)))
  set_bit(BH_Quiet, &bh->b_state);

 bh->b_end_io(bh, !bio->bi_status);
 bio_put(bio);
}
