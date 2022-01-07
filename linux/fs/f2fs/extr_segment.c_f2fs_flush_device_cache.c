
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct f2fs_sb_info {int s_ndevs; int dev_lock; int dirty_device; } ;
struct TYPE_2__ {int bdev; } ;


 TYPE_1__ FDEV (int) ;
 int __submit_flush_wait (struct f2fs_sb_info*,int ) ;
 int f2fs_clear_bit (int,char*) ;
 int f2fs_is_multi_device (struct f2fs_sb_info*) ;
 int f2fs_test_bit (int,char*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

int f2fs_flush_device_cache(struct f2fs_sb_info *sbi)
{
 int ret = 0, i;

 if (!f2fs_is_multi_device(sbi))
  return 0;

 for (i = 1; i < sbi->s_ndevs; i++) {
  if (!f2fs_test_bit(i, (char *)&sbi->dirty_device))
   continue;
  ret = __submit_flush_wait(sbi, FDEV(i).bdev);
  if (ret)
   break;

  spin_lock(&sbi->dev_lock);
  f2fs_clear_bit(i, (char *)&sbi->dirty_device);
  spin_unlock(&sbi->dev_lock);
 }

 return ret;
}
