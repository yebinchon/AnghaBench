
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {scalar_t__ index; } ;
struct f2fs_sb_info {int dummy; } ;
struct f2fs_io_info {int op_flags; scalar_t__ old_blkaddr; scalar_t__ new_blkaddr; int in_list; int * encrypted_page; struct page* page; int op; int temp; int type; struct f2fs_sb_info* sbi; } ;
typedef enum iostat_type { ____Placeholder_iostat_type } iostat_type ;


 int ClearPageError (struct page*) ;
 int F2FS_BLKSIZE ;
 int HOT ;
 scalar_t__ MAIN_BLKADDR (struct f2fs_sb_info*) ;
 int META ;
 int REQ_META ;
 int REQ_OP_WRITE ;
 int REQ_PRIO ;
 int REQ_SYNC ;
 int f2fs_submit_page_write (struct f2fs_io_info*) ;
 int f2fs_update_iostat (struct f2fs_sb_info*,int,int ) ;
 int set_page_writeback (struct page*) ;
 int stat_inc_meta_count (struct f2fs_sb_info*,scalar_t__) ;
 scalar_t__ unlikely (int) ;

void f2fs_do_write_meta_page(struct f2fs_sb_info *sbi, struct page *page,
     enum iostat_type io_type)
{
 struct f2fs_io_info fio = {
  .sbi = sbi,
  .type = META,
  .temp = HOT,
  .op = REQ_OP_WRITE,
  .op_flags = REQ_SYNC | REQ_META | REQ_PRIO,
  .old_blkaddr = page->index,
  .new_blkaddr = page->index,
  .page = page,
  .encrypted_page = ((void*)0),
  .in_list = 0,
 };

 if (unlikely(page->index >= MAIN_BLKADDR(sbi)))
  fio.op_flags &= ~REQ_META;

 set_page_writeback(page);
 ClearPageError(page);
 f2fs_submit_page_write(&fio);

 stat_inc_meta_count(sbi, page->index);
 f2fs_update_iostat(sbi, io_type, F2FS_BLKSIZE);
}
