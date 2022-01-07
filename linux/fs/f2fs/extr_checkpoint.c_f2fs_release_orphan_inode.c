
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode_management {scalar_t__ ino_num; int ino_lock; } ;
struct f2fs_sb_info {struct inode_management* im; } ;


 size_t ORPHAN_INO ;
 int f2fs_bug_on (struct f2fs_sb_info*,int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

void f2fs_release_orphan_inode(struct f2fs_sb_info *sbi)
{
 struct inode_management *im = &sbi->im[ORPHAN_INO];

 spin_lock(&im->ino_lock);
 f2fs_bug_on(sbi, im->ino_num == 0);
 im->ino_num--;
 spin_unlock(&im->ino_lock);
}
