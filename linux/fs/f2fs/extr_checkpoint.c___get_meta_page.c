
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {struct address_space* mapping; } ;
struct f2fs_sb_info {int dummy; } ;
struct f2fs_io_info {int op_flags; int is_por; struct page* page; int * encrypted_page; int new_blkaddr; int old_blkaddr; int op; int type; struct f2fs_sb_info* sbi; } ;
struct address_space {int dummy; } ;
typedef int pgoff_t ;


 int EIO ;
 struct page* ERR_PTR (int) ;
 int META ;
 struct address_space* META_MAPPING (struct f2fs_sb_info*) ;
 scalar_t__ PageUptodate (struct page*) ;
 int REQ_META ;
 int REQ_OP_READ ;
 int REQ_PRIO ;
 int cond_resched () ;
 struct page* f2fs_grab_cache_page (struct address_space*,int ,int) ;
 int f2fs_put_page (struct page*,int) ;
 int f2fs_submit_page_bio (struct f2fs_io_info*) ;
 int lock_page (struct page*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static struct page *__get_meta_page(struct f2fs_sb_info *sbi, pgoff_t index,
       bool is_meta)
{
 struct address_space *mapping = META_MAPPING(sbi);
 struct page *page;
 struct f2fs_io_info fio = {
  .sbi = sbi,
  .type = META,
  .op = REQ_OP_READ,
  .op_flags = REQ_META | REQ_PRIO,
  .old_blkaddr = index,
  .new_blkaddr = index,
  .encrypted_page = ((void*)0),
  .is_por = !is_meta,
 };
 int err;

 if (unlikely(!is_meta))
  fio.op_flags &= ~REQ_META;
repeat:
 page = f2fs_grab_cache_page(mapping, index, 0);
 if (!page) {
  cond_resched();
  goto repeat;
 }
 if (PageUptodate(page))
  goto out;

 fio.page = page;

 err = f2fs_submit_page_bio(&fio);
 if (err) {
  f2fs_put_page(page, 1);
  return ERR_PTR(err);
 }

 lock_page(page);
 if (unlikely(page->mapping != mapping)) {
  f2fs_put_page(page, 1);
  goto repeat;
 }

 if (unlikely(!PageUptodate(page))) {
  f2fs_put_page(page, 1);
  return ERR_PTR(-EIO);
 }
out:
 return page;
}
