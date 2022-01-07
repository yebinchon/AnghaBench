
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct page {int dummy; } ;
struct TYPE_2__ {scalar_t__ bi_sector; } ;
struct bio {TYPE_1__ bi_iter; scalar_t__ bi_status; } ;


 int ClearPageReclaim (struct page*) ;
 int MAJOR (int ) ;
 int MINOR (int ) ;
 int SetPageError (struct page*) ;
 int bio_dev (struct bio*) ;
 struct page* bio_first_page_all (struct bio*) ;
 int bio_put (struct bio*) ;
 int end_page_writeback (struct page*) ;
 int pr_alert (char*,int ,int ,unsigned long long) ;
 int set_page_dirty (struct page*) ;

void end_swap_bio_write(struct bio *bio)
{
 struct page *page = bio_first_page_all(bio);

 if (bio->bi_status) {
  SetPageError(page);
  set_page_dirty(page);
  pr_alert("Write-error on swap-device (%u:%u:%llu)\n",
    MAJOR(bio_dev(bio)), MINOR(bio_dev(bio)),
    (unsigned long long)bio->bi_iter.bi_sector);
  ClearPageReclaim(page);
 }
 end_page_writeback(page);
 bio_put(bio);
}
