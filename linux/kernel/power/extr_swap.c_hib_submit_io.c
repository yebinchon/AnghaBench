
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct page {int dummy; } ;
struct hib_bio_batch {int count; } ;
struct TYPE_2__ {int bi_sector; } ;
struct bio {struct hib_bio_batch* bi_private; int bi_end_io; TYPE_1__ bi_iter; } ;
typedef int pgoff_t ;


 int EFAULT ;
 int GFP_NOIO ;
 int PAGE_SIZE ;
 int __GFP_HIGH ;
 int atomic_inc (int *) ;
 int bio_add_page (struct bio*,struct page*,int,int ) ;
 struct bio* bio_alloc (int,int) ;
 int bio_put (struct bio*) ;
 int bio_set_dev (struct bio*,int ) ;
 int bio_set_op_attrs (struct bio*,int,int) ;
 int hib_end_io ;
 int hib_resume_bdev ;
 int pr_err (char*,unsigned long long) ;
 int submit_bio (struct bio*) ;
 int submit_bio_wait (struct bio*) ;
 struct page* virt_to_page (void*) ;

__attribute__((used)) static int hib_submit_io(int op, int op_flags, pgoff_t page_off, void *addr,
  struct hib_bio_batch *hb)
{
 struct page *page = virt_to_page(addr);
 struct bio *bio;
 int error = 0;

 bio = bio_alloc(GFP_NOIO | __GFP_HIGH, 1);
 bio->bi_iter.bi_sector = page_off * (PAGE_SIZE >> 9);
 bio_set_dev(bio, hib_resume_bdev);
 bio_set_op_attrs(bio, op, op_flags);

 if (bio_add_page(bio, page, PAGE_SIZE, 0) < PAGE_SIZE) {
  pr_err("Adding page to bio failed at %llu\n",
         (unsigned long long)bio->bi_iter.bi_sector);
  bio_put(bio);
  return -EFAULT;
 }

 if (hb) {
  bio->bi_end_io = hib_end_io;
  bio->bi_private = hb;
  atomic_inc(&hb->count);
  submit_bio(bio);
 } else {
  error = submit_bio_wait(bio);
  bio_put(bio);
 }

 return error;
}
