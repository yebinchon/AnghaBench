
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct super_block {int s_blocksize; int s_bdev; } ;
struct gfs2_sbd {struct super_block* sd_vfs; } ;
struct TYPE_2__ {int bi_sector; } ;
struct bio {struct gfs2_sbd* bi_private; int * bi_end_io; TYPE_1__ bi_iter; } ;
typedef int bio_end_io_t ;


 int BIO_MAX_PAGES ;
 int GFP_NOIO ;
 struct bio* bio_alloc (int ,int ) ;
 int bio_set_dev (struct bio*,int ) ;

__attribute__((used)) static struct bio *gfs2_log_alloc_bio(struct gfs2_sbd *sdp, u64 blkno,
          bio_end_io_t *end_io)
{
 struct super_block *sb = sdp->sd_vfs;
 struct bio *bio = bio_alloc(GFP_NOIO, BIO_MAX_PAGES);

 bio->bi_iter.bi_sector = blkno * (sb->s_blocksize >> 9);
 bio_set_dev(bio, sb->s_bdev);
 bio->bi_end_io = end_io;
 bio->bi_private = sdp;

 return bio;
}
