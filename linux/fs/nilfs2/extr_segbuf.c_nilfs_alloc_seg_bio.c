
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct the_nilfs {int ns_blocksize_bits; int ns_bdev; } ;
struct TYPE_2__ {int bi_sector; } ;
struct bio {TYPE_1__ bi_iter; } ;
typedef int sector_t ;


 int GFP_NOIO ;
 struct bio* bio_alloc (int ,int) ;
 int bio_set_dev (struct bio*,int ) ;
 scalar_t__ likely (struct bio*) ;

__attribute__((used)) static struct bio *nilfs_alloc_seg_bio(struct the_nilfs *nilfs, sector_t start,
           int nr_vecs)
{
 struct bio *bio;

 bio = bio_alloc(GFP_NOIO, nr_vecs);
 if (bio == ((void*)0)) {
  while (!bio && (nr_vecs >>= 1))
   bio = bio_alloc(GFP_NOIO, nr_vecs);
 }
 if (likely(bio)) {
  bio_set_dev(bio, nilfs->ns_bdev);
  bio->bi_iter.bi_sector =
   start << (nilfs->ns_blocksize_bits - 9);
 }
 return bio;
}
