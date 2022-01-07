
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct inode {int dummy; } ;
struct f2fs_sb_info {int dummy; } ;
typedef int block_t ;


 int DATA ;
 struct f2fs_sb_info* F2FS_I_SB (struct inode*) ;
 int META_MAPPING (struct f2fs_sb_info*) ;
 int __is_valid_data_blkaddr (int ) ;
 int f2fs_post_read_required (struct inode*) ;
 int f2fs_put_page (struct page*,int) ;
 int f2fs_wait_on_page_writeback (struct page*,int ,int,int) ;
 struct page* find_lock_page (int ,int ) ;

void f2fs_wait_on_block_writeback(struct inode *inode, block_t blkaddr)
{
 struct f2fs_sb_info *sbi = F2FS_I_SB(inode);
 struct page *cpage;

 if (!f2fs_post_read_required(inode))
  return;

 if (!__is_valid_data_blkaddr(blkaddr))
  return;

 cpage = find_lock_page(META_MAPPING(sbi), blkaddr);
 if (cpage) {
  f2fs_wait_on_page_writeback(cpage, DATA, 1, 1);
  f2fs_put_page(cpage, 1);
 }
}
