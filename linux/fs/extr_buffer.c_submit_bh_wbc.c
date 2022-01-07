
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct writeback_control {int dummy; } ;
struct buffer_head {int b_blocknr; int b_size; int b_page; int b_bdev; int b_end_io; } ;
struct TYPE_2__ {int bi_sector; int bi_size; } ;
struct bio {int bi_write_hint; struct buffer_head* bi_private; int bi_end_io; TYPE_1__ bi_iter; } ;
typedef enum rw_hint { ____Placeholder_rw_hint } rw_hint ;


 int BUG_ON (int) ;
 int GFP_NOIO ;
 int REQ_META ;
 int REQ_OP_WRITE ;
 int REQ_PRIO ;
 int bh_offset (struct buffer_head*) ;
 int bio_add_page (struct bio*,int ,int,int ) ;
 struct bio* bio_alloc (int ,int) ;
 int bio_set_dev (struct bio*,int ) ;
 int bio_set_op_attrs (struct bio*,int,int) ;
 int buffer_delay (struct buffer_head*) ;
 int buffer_locked (struct buffer_head*) ;
 int buffer_mapped (struct buffer_head*) ;
 scalar_t__ buffer_meta (struct buffer_head*) ;
 scalar_t__ buffer_prio (struct buffer_head*) ;
 int buffer_unwritten (struct buffer_head*) ;
 int clear_buffer_write_io_error (struct buffer_head*) ;
 int end_bio_bh_io_sync ;
 int guard_bio_eod (int,struct bio*) ;
 int submit_bio (struct bio*) ;
 scalar_t__ test_set_buffer_req (struct buffer_head*) ;
 int wbc_account_cgroup_owner (struct writeback_control*,int ,int) ;
 int wbc_init_bio (struct writeback_control*,struct bio*) ;

__attribute__((used)) static int submit_bh_wbc(int op, int op_flags, struct buffer_head *bh,
    enum rw_hint write_hint, struct writeback_control *wbc)
{
 struct bio *bio;

 BUG_ON(!buffer_locked(bh));
 BUG_ON(!buffer_mapped(bh));
 BUG_ON(!bh->b_end_io);
 BUG_ON(buffer_delay(bh));
 BUG_ON(buffer_unwritten(bh));




 if (test_set_buffer_req(bh) && (op == REQ_OP_WRITE))
  clear_buffer_write_io_error(bh);





 bio = bio_alloc(GFP_NOIO, 1);

 bio->bi_iter.bi_sector = bh->b_blocknr * (bh->b_size >> 9);
 bio_set_dev(bio, bh->b_bdev);
 bio->bi_write_hint = write_hint;

 bio_add_page(bio, bh->b_page, bh->b_size, bh_offset(bh));
 BUG_ON(bio->bi_iter.bi_size != bh->b_size);

 bio->bi_end_io = end_bio_bh_io_sync;
 bio->bi_private = bh;


 guard_bio_eod(op, bio);

 if (buffer_meta(bh))
  op_flags |= REQ_META;
 if (buffer_prio(bh))
  op_flags |= REQ_PRIO;
 bio_set_op_attrs(bio, op, op_flags);

 if (wbc) {
  wbc_init_bio(wbc, bio);
  wbc_account_cgroup_owner(wbc, bh->b_page, bh->b_size);
 }

 submit_bio(bio);
 return 0;
}
