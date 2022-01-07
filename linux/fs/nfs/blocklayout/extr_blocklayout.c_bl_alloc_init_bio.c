
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct parallel_io {int dummy; } ;
struct block_device {int dummy; } ;
struct TYPE_3__ {int bi_sector; } ;
struct bio {struct parallel_io* bi_private; int bi_end_io; TYPE_1__ bi_iter; } ;
typedef int sector_t ;
typedef int bio_end_io_t ;
struct TYPE_4__ {int flags; } ;


 int BIO_MAX_PAGES ;
 int GFP_NOIO ;
 int PF_MEMALLOC ;
 struct bio* bio_alloc (int ,int) ;
 int bio_set_dev (struct bio*,struct block_device*) ;
 TYPE_2__* current ;
 int min (int,int ) ;

__attribute__((used)) static struct bio *
bl_alloc_init_bio(int npg, struct block_device *bdev, sector_t disk_sector,
  bio_end_io_t end_io, struct parallel_io *par)
{
 struct bio *bio;

 npg = min(npg, BIO_MAX_PAGES);
 bio = bio_alloc(GFP_NOIO, npg);
 if (!bio && (current->flags & PF_MEMALLOC)) {
  while (!bio && (npg /= 2))
   bio = bio_alloc(GFP_NOIO, npg);
 }

 if (bio) {
  bio->bi_iter.bi_sector = disk_sector;
  bio_set_dev(bio, bdev);
  bio->bi_end_io = end_io;
  bio->bi_private = par;
 }
 return bio;
}
