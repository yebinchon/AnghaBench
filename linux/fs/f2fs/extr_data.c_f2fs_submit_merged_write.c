
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct f2fs_sb_info {int dummy; } ;
typedef enum page_type { ____Placeholder_page_type } page_type ;


 int __submit_merged_write_cond (struct f2fs_sb_info*,int *,int *,int ,int,int) ;

void f2fs_submit_merged_write(struct f2fs_sb_info *sbi, enum page_type type)
{
 __submit_merged_write_cond(sbi, ((void*)0), ((void*)0), 0, type, 1);
}
