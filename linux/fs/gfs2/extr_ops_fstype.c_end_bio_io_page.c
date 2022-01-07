
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct bio {int bi_status; struct page* bi_private; } ;


 int SetPageUptodate (struct page*) ;
 int pr_warn (char*,int ) ;
 int unlock_page (struct page*) ;

__attribute__((used)) static void end_bio_io_page(struct bio *bio)
{
 struct page *page = bio->bi_private;

 if (!bio->bi_status)
  SetPageUptodate(page);
 else
  pr_warn("error %d reading superblock\n", bio->bi_status);
 unlock_page(page);
}
