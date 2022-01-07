
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct dio_submit {int cur_page_fs_offset; int logical_offset_in_bio; struct bio* bio; } ;
struct dio {TYPE_1__* iocb; scalar_t__ is_async; int op_flags; int op; } ;
struct block_device {int dummy; } ;
struct TYPE_4__ {int bi_sector; } ;
struct bio {int bi_write_hint; int bi_end_io; TYPE_2__ bi_iter; } ;
typedef int sector_t ;
struct TYPE_3__ {int ki_hint; } ;


 int GFP_KERNEL ;
 struct bio* bio_alloc (int ,int) ;
 int bio_set_dev (struct bio*,struct block_device*) ;
 int bio_set_op_attrs (struct bio*,int ,int ) ;
 int dio_bio_end_aio ;
 int dio_bio_end_io ;

__attribute__((used)) static inline void
dio_bio_alloc(struct dio *dio, struct dio_submit *sdio,
       struct block_device *bdev,
       sector_t first_sector, int nr_vecs)
{
 struct bio *bio;





 bio = bio_alloc(GFP_KERNEL, nr_vecs);

 bio_set_dev(bio, bdev);
 bio->bi_iter.bi_sector = first_sector;
 bio_set_op_attrs(bio, dio->op, dio->op_flags);
 if (dio->is_async)
  bio->bi_end_io = dio_bio_end_aio;
 else
  bio->bi_end_io = dio_bio_end_io;

 bio->bi_write_hint = dio->iocb->ki_hint;

 sdio->bio = bio;
 sdio->logical_offset_in_bio = sdio->cur_page_fs_offset;
}
