
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct f2fs_sb_info {int dummy; } ;
struct f2fs_io_info {scalar_t__ type; } ;
struct f2fs_bio_info {int dummy; } ;
struct TYPE_2__ {int bi_size; } ;
struct bio {unsigned int bi_max_vecs; unsigned int bi_vcnt; TYPE_1__ bi_iter; } ;
typedef int block_t ;


 scalar_t__ DATA ;
 unsigned int F2FS_BYTES_TO_BLK (int ) ;
 scalar_t__ F2FS_IO_ALIGNED (struct f2fs_sb_info*) ;
 unsigned int F2FS_IO_SIZE (struct f2fs_sb_info*) ;
 scalar_t__ NODE ;
 int io_type_is_mergeable (struct f2fs_bio_info*,struct f2fs_io_info*) ;
 int page_is_mergeable (struct f2fs_sb_info*,struct bio*,int ,int ) ;

__attribute__((used)) static bool io_is_mergeable(struct f2fs_sb_info *sbi, struct bio *bio,
     struct f2fs_bio_info *io,
     struct f2fs_io_info *fio,
     block_t last_blkaddr,
     block_t cur_blkaddr)
{
 if (F2FS_IO_ALIGNED(sbi) && (fio->type == DATA || fio->type == NODE)) {
  unsigned int filled_blocks =
    F2FS_BYTES_TO_BLK(bio->bi_iter.bi_size);
  unsigned int io_size = F2FS_IO_SIZE(sbi);
  unsigned int left_vecs = bio->bi_max_vecs - bio->bi_vcnt;


  if (!(filled_blocks % io_size) && left_vecs < io_size)
   return 0;
 }
 if (!page_is_mergeable(sbi, bio, last_blkaddr, cur_blkaddr))
  return 0;
 return io_type_is_mergeable(io, fio);
}
