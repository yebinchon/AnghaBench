
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct page {int dummy; } ;
struct o2hb_region {unsigned int hr_block_bits; unsigned int hr_slots_per_page; unsigned int hr_start_block; struct page** hr_slot_data; int hr_bdev; } ;
struct o2hb_bio_wait_ctxt {int dummy; } ;
struct TYPE_2__ {unsigned int bi_sector; } ;
struct bio {int bi_end_io; struct o2hb_bio_wait_ctxt* bi_private; TYPE_1__ bi_iter; } ;


 int ENOMEM ;
 struct bio* ERR_PTR (int ) ;
 int GFP_ATOMIC ;
 int ML_ERROR ;
 int ML_HB_BIO ;
 unsigned int PAGE_SIZE ;
 int bio_add_page (struct bio*,struct page*,unsigned int,unsigned int) ;
 struct bio* bio_alloc (int ,int) ;
 int bio_set_dev (struct bio*,int ) ;
 int bio_set_op_attrs (struct bio*,int,int) ;
 unsigned int min (unsigned int,unsigned int) ;
 int mlog (int ,char*,...) ;
 int o2hb_bio_end_io ;

__attribute__((used)) static struct bio *o2hb_setup_one_bio(struct o2hb_region *reg,
          struct o2hb_bio_wait_ctxt *wc,
          unsigned int *current_slot,
          unsigned int max_slots, int op,
          int op_flags)
{
 int len, current_page;
 unsigned int vec_len, vec_start;
 unsigned int bits = reg->hr_block_bits;
 unsigned int spp = reg->hr_slots_per_page;
 unsigned int cs = *current_slot;
 struct bio *bio;
 struct page *page;





 bio = bio_alloc(GFP_ATOMIC, 16);
 if (!bio) {
  mlog(ML_ERROR, "Could not alloc slots BIO!\n");
  bio = ERR_PTR(-ENOMEM);
  goto bail;
 }


 bio->bi_iter.bi_sector = (reg->hr_start_block + cs) << (bits - 9);
 bio_set_dev(bio, reg->hr_bdev);
 bio->bi_private = wc;
 bio->bi_end_io = o2hb_bio_end_io;
 bio_set_op_attrs(bio, op, op_flags);

 vec_start = (cs << bits) % PAGE_SIZE;
 while(cs < max_slots) {
  current_page = cs / spp;
  page = reg->hr_slot_data[current_page];

  vec_len = min(PAGE_SIZE - vec_start,
         (max_slots-cs) * (PAGE_SIZE/spp) );

  mlog(ML_HB_BIO, "page %d, vec_len = %u, vec_start = %u\n",
       current_page, vec_len, vec_start);

  len = bio_add_page(bio, page, vec_len, vec_start);
  if (len != vec_len) break;

  cs += vec_len / (PAGE_SIZE/spp);
  vec_start = 0;
 }

bail:
 *current_slot = cs;
 return bio;
}
