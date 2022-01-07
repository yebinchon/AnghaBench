
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct f2fs_sb_info {int dummy; } ;
struct bio {int dummy; } ;
typedef scalar_t__ block_t ;


 int __same_bdev (struct f2fs_sb_info*,scalar_t__,struct bio*) ;

__attribute__((used)) static bool page_is_mergeable(struct f2fs_sb_info *sbi, struct bio *bio,
    block_t last_blkaddr, block_t cur_blkaddr)
{
 if (last_blkaddr + 1 != cur_blkaddr)
  return 0;
 return __same_bdev(sbi, cur_blkaddr, bio);
}
