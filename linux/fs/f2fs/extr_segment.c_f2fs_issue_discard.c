
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seg_entry {int discard_map; } ;
struct f2fs_sb_info {int discard_blks; } ;
struct block_device {int dummy; } ;
typedef scalar_t__ sector_t ;
typedef scalar_t__ block_t ;


 unsigned int GET_BLKOFF_FROM_SEG0 (struct f2fs_sb_info*,scalar_t__) ;
 int GET_SEGNO (struct f2fs_sb_info*,scalar_t__) ;
 int __issue_discard_async (struct f2fs_sb_info*,struct block_device*,scalar_t__,scalar_t__) ;
 struct block_device* f2fs_target_device (struct f2fs_sb_info*,scalar_t__,int *) ;
 int f2fs_test_and_set_bit (unsigned int,int ) ;
 struct seg_entry* get_seg_entry (struct f2fs_sb_info*,int ) ;

__attribute__((used)) static int f2fs_issue_discard(struct f2fs_sb_info *sbi,
    block_t blkstart, block_t blklen)
{
 sector_t start = blkstart, len = 0;
 struct block_device *bdev;
 struct seg_entry *se;
 unsigned int offset;
 block_t i;
 int err = 0;

 bdev = f2fs_target_device(sbi, blkstart, ((void*)0));

 for (i = blkstart; i < blkstart + blklen; i++, len++) {
  if (i != start) {
   struct block_device *bdev2 =
    f2fs_target_device(sbi, i, ((void*)0));

   if (bdev2 != bdev) {
    err = __issue_discard_async(sbi, bdev,
      start, len);
    if (err)
     return err;
    bdev = bdev2;
    start = i;
    len = 0;
   }
  }

  se = get_seg_entry(sbi, GET_SEGNO(sbi, i));
  offset = GET_BLKOFF_FROM_SEG0(sbi, i);

  if (!f2fs_test_and_set_bit(offset, se->discard_map))
   sbi->discard_blks--;
 }

 if (len)
  err = __issue_discard_async(sbi, bdev, start, len);
 return err;
}
