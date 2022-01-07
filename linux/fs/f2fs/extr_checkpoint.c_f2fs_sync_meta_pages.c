
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct writeback_control {int for_reclaim; } ;
struct pagevec {struct page** pages; } ;
struct page {scalar_t__ index; struct address_space* mapping; } ;
struct f2fs_sb_info {int dummy; } ;
struct blk_plug {int dummy; } ;
struct address_space {int dummy; } ;
typedef scalar_t__ pgoff_t ;
typedef enum page_type { ____Placeholder_page_type } page_type ;
typedef enum iostat_type { ____Placeholder_iostat_type } iostat_type ;


 long LONG_MAX ;
 int META ;
 struct address_space* META_MAPPING (struct f2fs_sb_info*) ;
 int PAGECACHE_TAG_DIRTY ;
 int PageDirty (struct page*) ;
 scalar_t__ ULONG_MAX ;
 scalar_t__ __f2fs_write_meta_page (struct page*,struct writeback_control*,int) ;
 int blk_finish_plug (struct blk_plug*) ;
 int blk_start_plug (struct blk_plug*) ;
 int clear_page_dirty_for_io (struct page*) ;
 int cond_resched () ;
 int f2fs_submit_merged_write (struct f2fs_sb_info*,int) ;
 int f2fs_wait_on_page_writeback (struct page*,int ,int,int) ;
 int lock_page (struct page*) ;
 int pagevec_init (struct pagevec*) ;
 int pagevec_lookup_tag (struct pagevec*,struct address_space*,scalar_t__*,int ) ;
 int pagevec_release (struct pagevec*) ;
 scalar_t__ unlikely (int) ;
 int unlock_page (struct page*) ;

long f2fs_sync_meta_pages(struct f2fs_sb_info *sbi, enum page_type type,
    long nr_to_write, enum iostat_type io_type)
{
 struct address_space *mapping = META_MAPPING(sbi);
 pgoff_t index = 0, prev = ULONG_MAX;
 struct pagevec pvec;
 long nwritten = 0;
 int nr_pages;
 struct writeback_control wbc = {
  .for_reclaim = 0,
 };
 struct blk_plug plug;

 pagevec_init(&pvec);

 blk_start_plug(&plug);

 while ((nr_pages = pagevec_lookup_tag(&pvec, mapping, &index,
    PAGECACHE_TAG_DIRTY))) {
  int i;

  for (i = 0; i < nr_pages; i++) {
   struct page *page = pvec.pages[i];

   if (prev == ULONG_MAX)
    prev = page->index - 1;
   if (nr_to_write != LONG_MAX && page->index != prev + 1) {
    pagevec_release(&pvec);
    goto stop;
   }

   lock_page(page);

   if (unlikely(page->mapping != mapping)) {
continue_unlock:
    unlock_page(page);
    continue;
   }
   if (!PageDirty(page)) {

    goto continue_unlock;
   }

   f2fs_wait_on_page_writeback(page, META, 1, 1);

   if (!clear_page_dirty_for_io(page))
    goto continue_unlock;

   if (__f2fs_write_meta_page(page, &wbc, io_type)) {
    unlock_page(page);
    break;
   }
   nwritten++;
   prev = page->index;
   if (unlikely(nwritten >= nr_to_write))
    break;
  }
  pagevec_release(&pvec);
  cond_resched();
 }
stop:
 if (nwritten)
  f2fs_submit_merged_write(sbi, type);

 blk_finish_plug(&plug);

 return nwritten;
}
