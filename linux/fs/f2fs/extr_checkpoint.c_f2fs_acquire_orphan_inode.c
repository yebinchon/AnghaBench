
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode_management {scalar_t__ ino_num; int ino_lock; } ;
struct f2fs_sb_info {scalar_t__ max_orphans; struct inode_management* im; } ;


 int ENOSPC ;
 int FAULT_ORPHAN ;
 size_t ORPHAN_INO ;
 int f2fs_show_injection_info (int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 scalar_t__ time_to_inject (struct f2fs_sb_info*,int ) ;
 scalar_t__ unlikely (int) ;

int f2fs_acquire_orphan_inode(struct f2fs_sb_info *sbi)
{
 struct inode_management *im = &sbi->im[ORPHAN_INO];
 int err = 0;

 spin_lock(&im->ino_lock);

 if (time_to_inject(sbi, FAULT_ORPHAN)) {
  spin_unlock(&im->ino_lock);
  f2fs_show_injection_info(FAULT_ORPHAN);
  return -ENOSPC;
 }

 if (unlikely(im->ino_num >= sbi->max_orphans))
  err = -ENOSPC;
 else
  im->ino_num++;
 spin_unlock(&im->ino_lock);

 return err;
}
