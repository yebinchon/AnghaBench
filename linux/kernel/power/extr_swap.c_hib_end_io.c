
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct page {int dummy; } ;
struct hib_bio_batch {int wait; int count; scalar_t__ error; } ;
struct TYPE_2__ {scalar_t__ bi_sector; } ;
struct bio {scalar_t__ bi_status; TYPE_1__ bi_iter; struct hib_bio_batch* bi_private; } ;


 int MAJOR (int ) ;
 int MINOR (int ) ;
 scalar_t__ PAGE_SIZE ;
 scalar_t__ WRITE ;
 scalar_t__ atomic_dec_and_test (int *) ;
 scalar_t__ bio_data_dir (struct bio*) ;
 int bio_dev (struct bio*) ;
 struct page* bio_first_page_all (struct bio*) ;
 int bio_put (struct bio*) ;
 scalar_t__ clean_pages_on_read ;
 int flush_icache_range (unsigned long,scalar_t__) ;
 scalar_t__ page_address (struct page*) ;
 int pr_alert (char*,int ,int ,unsigned long long) ;
 int put_page (struct page*) ;
 int wake_up (int *) ;

__attribute__((used)) static void hib_end_io(struct bio *bio)
{
 struct hib_bio_batch *hb = bio->bi_private;
 struct page *page = bio_first_page_all(bio);

 if (bio->bi_status) {
  pr_alert("Read-error on swap-device (%u:%u:%Lu)\n",
    MAJOR(bio_dev(bio)), MINOR(bio_dev(bio)),
    (unsigned long long)bio->bi_iter.bi_sector);
 }

 if (bio_data_dir(bio) == WRITE)
  put_page(page);
 else if (clean_pages_on_read)
  flush_icache_range((unsigned long)page_address(page),
       (unsigned long)page_address(page) + PAGE_SIZE);

 if (bio->bi_status && !hb->error)
  hb->error = bio->bi_status;
 if (atomic_dec_and_test(&hb->count))
  wake_up(&hb->wait);

 bio_put(bio);
}
