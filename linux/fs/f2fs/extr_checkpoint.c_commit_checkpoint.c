
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct writeback_control {int for_reclaim; } ;
struct page {int dummy; } ;
struct f2fs_sb_info {int dummy; } ;
typedef int block_t ;


 int FS_CP_META_IO ;
 int META ;
 int META_FLUSH ;
 int PAGE_SIZE ;
 int __f2fs_write_meta_page (struct page*,struct writeback_control*,int ) ;
 int clear_page_dirty_for_io (struct page*) ;
 int f2fs_bug_on (struct f2fs_sb_info*,int) ;
 scalar_t__ f2fs_cp_error (struct f2fs_sb_info*) ;
 struct page* f2fs_grab_meta_page (struct f2fs_sb_info*,int ) ;
 int f2fs_put_page (struct page*,int) ;
 int f2fs_submit_merged_write (struct f2fs_sb_info*,int ) ;
 int f2fs_wait_on_page_writeback (struct page*,int ,int,int) ;
 int memcpy (int ,void*,int ) ;
 int page_address (struct page*) ;
 int set_page_dirty (struct page*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static void commit_checkpoint(struct f2fs_sb_info *sbi,
 void *src, block_t blk_addr)
{
 struct writeback_control wbc = {
  .for_reclaim = 0,
 };






 struct page *page = f2fs_grab_meta_page(sbi, blk_addr);
 int err;

 f2fs_wait_on_page_writeback(page, META, 1, 1);

 memcpy(page_address(page), src, PAGE_SIZE);

 set_page_dirty(page);
 if (unlikely(!clear_page_dirty_for_io(page)))
  f2fs_bug_on(sbi, 1);


 err = __f2fs_write_meta_page(page, &wbc, FS_CP_META_IO);
 if (unlikely(err && f2fs_cp_error(sbi))) {
  f2fs_put_page(page, 1);
  return;
 }

 f2fs_bug_on(sbi, err);
 f2fs_put_page(page, 0);


 f2fs_submit_merged_write(sbi, META_FLUSH);
}
