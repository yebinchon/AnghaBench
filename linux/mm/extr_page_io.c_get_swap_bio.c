
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct page {int dummy; } ;
struct block_device {int dummy; } ;
struct TYPE_2__ {int bi_sector; } ;
struct bio {int bi_end_io; TYPE_1__ bi_iter; } ;
typedef int gfp_t ;
typedef int bio_end_io_t ;


 int PAGE_SHIFT ;
 int PAGE_SIZE ;
 int bio_add_page (struct bio*,struct page*,int,int ) ;
 struct bio* bio_alloc (int ,int) ;
 int bio_set_dev (struct bio*,struct block_device*) ;
 int hpage_nr_pages (struct page*) ;
 int map_swap_page (struct page*,struct block_device**) ;

__attribute__((used)) static struct bio *get_swap_bio(gfp_t gfp_flags,
    struct page *page, bio_end_io_t end_io)
{
 struct bio *bio;

 bio = bio_alloc(gfp_flags, 1);
 if (bio) {
  struct block_device *bdev;

  bio->bi_iter.bi_sector = map_swap_page(page, &bdev);
  bio_set_dev(bio, bdev);
  bio->bi_iter.bi_sector <<= PAGE_SHIFT - 9;
  bio->bi_end_io = end_io;

  bio_add_page(bio, page, PAGE_SIZE * hpage_nr_pages(page), 0);
 }
 return bio;
}
