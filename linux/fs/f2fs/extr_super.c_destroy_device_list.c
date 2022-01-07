
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct f2fs_sb_info {int s_ndevs; int devs; } ;
struct TYPE_2__ {int blkz_seq; int bdev; } ;


 TYPE_1__ FDEV (int) ;
 int FMODE_EXCL ;
 int blkdev_put (int ,int ) ;
 int kvfree (int ) ;

__attribute__((used)) static void destroy_device_list(struct f2fs_sb_info *sbi)
{
 int i;

 for (i = 0; i < sbi->s_ndevs; i++) {
  blkdev_put(FDEV(i).bdev, FMODE_EXCL);



 }
 kvfree(sbi->devs);
}
