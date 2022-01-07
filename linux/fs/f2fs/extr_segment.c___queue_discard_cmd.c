
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct f2fs_sb_info {int dummy; } ;
struct block_device {int dummy; } ;
typedef int block_t ;
struct TYPE_6__ {scalar_t__ start_blk; } ;
struct TYPE_5__ {TYPE_1__* dcc_info; } ;
struct TYPE_4__ {int cmd_lock; } ;


 TYPE_3__ FDEV (int) ;
 TYPE_2__* SM_I (struct f2fs_sb_info*) ;
 int __update_discard_tree_range (struct f2fs_sb_info*,struct block_device*,int ,int ,int ) ;
 int f2fs_bdev_support_discard (struct block_device*) ;
 scalar_t__ f2fs_is_multi_device (struct f2fs_sb_info*) ;
 int f2fs_target_device_index (struct f2fs_sb_info*,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int trace_f2fs_queue_discard (struct block_device*,int ,int ) ;

__attribute__((used)) static int __queue_discard_cmd(struct f2fs_sb_info *sbi,
  struct block_device *bdev, block_t blkstart, block_t blklen)
{
 block_t lblkstart = blkstart;

 if (!f2fs_bdev_support_discard(bdev))
  return 0;

 trace_f2fs_queue_discard(bdev, blkstart, blklen);

 if (f2fs_is_multi_device(sbi)) {
  int devi = f2fs_target_device_index(sbi, blkstart);

  blkstart -= FDEV(devi).start_blk;
 }
 mutex_lock(&SM_I(sbi)->dcc_info->cmd_lock);
 __update_discard_tree_range(sbi, bdev, lblkstart, blkstart, blklen);
 mutex_unlock(&SM_I(sbi)->dcc_info->cmd_lock);
 return 0;
}
