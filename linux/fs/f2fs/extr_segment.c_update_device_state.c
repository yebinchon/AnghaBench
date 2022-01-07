
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct f2fs_sb_info {int dev_lock; int dirty_device; } ;
struct f2fs_io_info {int ino; int new_blkaddr; struct f2fs_sb_info* sbi; } ;


 int FLUSH_INO ;
 int f2fs_is_multi_device (struct f2fs_sb_info*) ;
 int f2fs_set_bit (unsigned int,char*) ;
 int f2fs_set_dirty_device (struct f2fs_sb_info*,int ,unsigned int,int ) ;
 unsigned int f2fs_target_device_index (struct f2fs_sb_info*,int ) ;
 int f2fs_test_bit (unsigned int,char*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void update_device_state(struct f2fs_io_info *fio)
{
 struct f2fs_sb_info *sbi = fio->sbi;
 unsigned int devidx;

 if (!f2fs_is_multi_device(sbi))
  return;

 devidx = f2fs_target_device_index(sbi, fio->new_blkaddr);


 f2fs_set_dirty_device(sbi, fio->ino, devidx, FLUSH_INO);


 if (!f2fs_test_bit(devidx, (char *)&sbi->dirty_device)) {
  spin_lock(&sbi->dev_lock);
  f2fs_set_bit(devidx, (char *)&sbi->dirty_device);
  spin_unlock(&sbi->dev_lock);
 }
}
