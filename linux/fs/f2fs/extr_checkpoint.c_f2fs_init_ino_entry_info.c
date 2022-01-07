
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode_management {scalar_t__ ino_num; int ino_list; int ino_lock; int ino_root; } ;
struct f2fs_sb_info {int max_orphans; int blocks_per_seg; struct inode_management* im; } ;


 int F2FS_CP_PACKS ;
 int F2FS_ORPHANS_PER_BLOCK ;
 int GFP_ATOMIC ;
 int INIT_LIST_HEAD (int *) ;
 int INIT_RADIX_TREE (int *,int ) ;
 int MAX_INO_ENTRY ;
 int NR_CURSEG_TYPE ;
 int __cp_payload (struct f2fs_sb_info*) ;
 int spin_lock_init (int *) ;

void f2fs_init_ino_entry_info(struct f2fs_sb_info *sbi)
{
 int i;

 for (i = 0; i < MAX_INO_ENTRY; i++) {
  struct inode_management *im = &sbi->im[i];

  INIT_RADIX_TREE(&im->ino_root, GFP_ATOMIC);
  spin_lock_init(&im->ino_lock);
  INIT_LIST_HEAD(&im->ino_list);
  im->ino_num = 0;
 }

 sbi->max_orphans = (sbi->blocks_per_seg - F2FS_CP_PACKS -
   NR_CURSEG_TYPE - __cp_payload(sbi)) *
    F2FS_ORPHANS_PER_BLOCK;
}
