
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct f2fs_sb_info {int dummy; } ;
typedef int nid_t ;


 int ORPHAN_INO ;
 int __remove_ino_entry (struct f2fs_sb_info*,int ,int ) ;

void f2fs_remove_orphan_inode(struct f2fs_sb_info *sbi, nid_t ino)
{

 __remove_ino_entry(sbi, ino, ORPHAN_INO);
}
