
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct f2fs_sb_info {int s_ndevs; TYPE_1__* sb; } ;
typedef int nid_t ;
struct TYPE_4__ {int bdev; } ;
struct TYPE_3__ {int s_bdev; } ;


 TYPE_2__ FDEV (int) ;
 int FLUSH_INO ;
 int __submit_flush_wait (struct f2fs_sb_info*,int ) ;
 int f2fs_is_dirty_device (struct f2fs_sb_info*,int ,int,int ) ;
 int f2fs_is_multi_device (struct f2fs_sb_info*) ;

__attribute__((used)) static int submit_flush_wait(struct f2fs_sb_info *sbi, nid_t ino)
{
 int ret = 0;
 int i;

 if (!f2fs_is_multi_device(sbi))
  return __submit_flush_wait(sbi, sbi->sb->s_bdev);

 for (i = 0; i < sbi->s_ndevs; i++) {
  if (!f2fs_is_dirty_device(sbi, ino, i, FLUSH_INO))
   continue;
  ret = __submit_flush_wait(sbi, FDEV(i).bdev);
  if (ret)
   break;
 }
 return ret;
}
