
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct f2fs_sb_info {int dummy; } ;


 int __drop_discard_cmd (struct f2fs_sb_info*) ;

void f2fs_drop_discard_cmd(struct f2fs_sb_info *sbi)
{
 __drop_discard_cmd(sbi);
}
