
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct f2fs_sb_info {int dummy; } ;
typedef int nid_t ;


 int __add_ino_entry (struct f2fs_sb_info*,int ,unsigned int,int) ;

void f2fs_set_dirty_device(struct f2fs_sb_info *sbi, nid_t ino,
     unsigned int devidx, int type)
{
 __add_ino_entry(sbi, ino, devidx, type);
}
