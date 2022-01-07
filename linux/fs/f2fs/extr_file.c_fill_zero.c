
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct inode {int dummy; } ;
struct f2fs_sb_info {int dummy; } ;
typedef int pgoff_t ;
typedef int loff_t ;


 int DATA ;
 struct f2fs_sb_info* F2FS_I_SB (struct inode*) ;
 scalar_t__ IS_ERR (struct page*) ;
 int PTR_ERR (struct page*) ;
 int f2fs_balance_fs (struct f2fs_sb_info*,int) ;
 struct page* f2fs_get_new_data_page (struct inode*,int *,int ,int) ;
 int f2fs_lock_op (struct f2fs_sb_info*) ;
 int f2fs_put_page (struct page*,int) ;
 int f2fs_unlock_op (struct f2fs_sb_info*) ;
 int f2fs_wait_on_page_writeback (struct page*,int ,int,int) ;
 int set_page_dirty (struct page*) ;
 int zero_user (struct page*,int ,int ) ;

__attribute__((used)) static int fill_zero(struct inode *inode, pgoff_t index,
     loff_t start, loff_t len)
{
 struct f2fs_sb_info *sbi = F2FS_I_SB(inode);
 struct page *page;

 if (!len)
  return 0;

 f2fs_balance_fs(sbi, 1);

 f2fs_lock_op(sbi);
 page = f2fs_get_new_data_page(inode, ((void*)0), index, 0);
 f2fs_unlock_op(sbi);

 if (IS_ERR(page))
  return PTR_ERR(page);

 f2fs_wait_on_page_writeback(page, DATA, 1, 1);
 zero_user(page, start, len);
 set_page_dirty(page);
 f2fs_put_page(page, 1);
 return 0;
}
