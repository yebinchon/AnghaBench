
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct f2fs_sb_info {int s_ndevs; TYPE_1__* sb; } ;
struct TYPE_4__ {int bdev; } ;
struct TYPE_3__ {int s_bdev; } ;


 TYPE_2__ FDEV (int) ;
 int f2fs_bdev_support_discard (int ) ;
 int f2fs_is_multi_device (struct f2fs_sb_info*) ;

__attribute__((used)) static inline bool f2fs_hw_support_discard(struct f2fs_sb_info *sbi)
{
 int i;

 if (!f2fs_is_multi_device(sbi))
  return f2fs_bdev_support_discard(sbi->sb->s_bdev);

 for (i = 0; i < sbi->s_ndevs; i++)
  if (f2fs_bdev_support_discard(FDEV(i).bdev))
   return 1;
 return 0;
}
