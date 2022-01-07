
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode_management {int ino_lock; int ino_root; } ;
struct ino_entry {int dirty_device; } ;
struct f2fs_sb_info {struct inode_management* im; } ;
typedef int nid_t ;


 scalar_t__ f2fs_test_bit (unsigned int,char*) ;
 struct ino_entry* radix_tree_lookup (int *,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

bool f2fs_is_dirty_device(struct f2fs_sb_info *sbi, nid_t ino,
     unsigned int devidx, int type)
{
 struct inode_management *im = &sbi->im[type];
 struct ino_entry *e;
 bool is_dirty = 0;

 spin_lock(&im->ino_lock);
 e = radix_tree_lookup(&im->ino_root, ino);
 if (e && f2fs_test_bit(devidx, (char *)&e->dirty_device))
  is_dirty = 1;
 spin_unlock(&im->ino_lock);
 return is_dirty;
}
