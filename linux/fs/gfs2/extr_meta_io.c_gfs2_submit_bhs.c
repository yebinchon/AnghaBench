
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct buffer_head {int b_blocknr; int b_size; int b_page; int b_bdev; } ;
struct TYPE_2__ {int bi_sector; scalar_t__ bi_size; } ;
struct bio {int bi_end_io; TYPE_1__ bi_iter; } ;


 int BUG_ON (int) ;
 int GFP_NOIO ;
 int bh_offset (struct buffer_head*) ;
 int bio_add_page (struct bio*,int ,int,int ) ;
 struct bio* bio_alloc (int ,int) ;
 int bio_set_dev (struct bio*,int ) ;
 int bio_set_op_attrs (struct bio*,int,int) ;
 int gfs2_meta_read_endio ;
 int submit_bio (struct bio*) ;

__attribute__((used)) static void gfs2_submit_bhs(int op, int op_flags, struct buffer_head *bhs[],
       int num)
{
 while (num > 0) {
  struct buffer_head *bh = *bhs;
  struct bio *bio;

  bio = bio_alloc(GFP_NOIO, num);
  bio->bi_iter.bi_sector = bh->b_blocknr * (bh->b_size >> 9);
  bio_set_dev(bio, bh->b_bdev);
  while (num > 0) {
   bh = *bhs;
   if (!bio_add_page(bio, bh->b_page, bh->b_size, bh_offset(bh))) {
    BUG_ON(bio->bi_iter.bi_size == 0);
    break;
   }
   bhs++;
   num--;
  }
  bio->bi_end_io = gfs2_meta_read_endio;
  bio_set_op_attrs(bio, op, op_flags);
  submit_bio(bio);
 }
}
