
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode_management {int ino_lock; int ino_root; } ;
struct ino_entry {int dummy; } ;
struct f2fs_sb_info {struct inode_management* im; } ;
typedef int nid_t ;


 struct ino_entry* radix_tree_lookup (int *,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

bool f2fs_exist_written_data(struct f2fs_sb_info *sbi, nid_t ino, int mode)
{
 struct inode_management *im = &sbi->im[mode];
 struct ino_entry *e;

 spin_lock(&im->ino_lock);
 e = radix_tree_lookup(&im->ino_root, ino);
 spin_unlock(&im->ino_lock);
 return e ? 1 : 0;
}
