
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct f2fs_sb_info {int dummy; } ;
struct block_device {int dummy; } ;
typedef int block_t ;


 int __f2fs_issue_discard_zone (struct f2fs_sb_info*,struct block_device*,int ,int ) ;
 int __queue_discard_cmd (struct f2fs_sb_info*,struct block_device*,int ,int ) ;
 scalar_t__ bdev_is_zoned (struct block_device*) ;
 scalar_t__ f2fs_sb_has_blkzoned (struct f2fs_sb_info*) ;

__attribute__((used)) static int __issue_discard_async(struct f2fs_sb_info *sbi,
  struct block_device *bdev, block_t blkstart, block_t blklen)
{




 return __queue_discard_cmd(sbi, bdev, blkstart, blklen);
}
