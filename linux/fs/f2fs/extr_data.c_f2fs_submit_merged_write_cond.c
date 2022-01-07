
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct inode {int dummy; } ;
struct f2fs_sb_info {int dummy; } ;
typedef int nid_t ;
typedef enum page_type { ____Placeholder_page_type } page_type ;


 int __submit_merged_write_cond (struct f2fs_sb_info*,struct inode*,struct page*,int ,int,int) ;

void f2fs_submit_merged_write_cond(struct f2fs_sb_info *sbi,
    struct inode *inode, struct page *page,
    nid_t ino, enum page_type type)
{
 __submit_merged_write_cond(sbi, inode, page, ino, type, 0);
}
