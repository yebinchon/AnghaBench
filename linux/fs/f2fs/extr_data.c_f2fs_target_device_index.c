
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct f2fs_sb_info {int s_ndevs; } ;
typedef scalar_t__ block_t ;
struct TYPE_2__ {scalar_t__ start_blk; scalar_t__ end_blk; } ;


 TYPE_1__ FDEV (int) ;
 int f2fs_is_multi_device (struct f2fs_sb_info*) ;

int f2fs_target_device_index(struct f2fs_sb_info *sbi, block_t blkaddr)
{
 int i;

 if (!f2fs_is_multi_device(sbi))
  return 0;

 for (i = 0; i < sbi->s_ndevs; i++)
  if (FDEV(i).start_blk <= blkaddr && FDEV(i).end_blk >= blkaddr)
   return i;
 return 0;
}
