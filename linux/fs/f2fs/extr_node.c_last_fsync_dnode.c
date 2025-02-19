
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pagevec {struct page** pages; } ;
struct page {scalar_t__ mapping; } ;
struct f2fs_sb_info {int dummy; } ;
typedef scalar_t__ pgoff_t ;
typedef scalar_t__ nid_t ;


 int EIO ;
 struct page* ERR_PTR (int ) ;
 int IS_DNODE (struct page*) ;
 scalar_t__ NODE_MAPPING (struct f2fs_sb_info*) ;
 int PAGECACHE_TAG_DIRTY ;
 int PageDirty (struct page*) ;
 int cond_resched () ;
 int f2fs_cp_error (struct f2fs_sb_info*) ;
 int f2fs_put_page (struct page*,int ) ;
 int get_page (struct page*) ;
 scalar_t__ ino_of_node (struct page*) ;
 int is_cold_node (struct page*) ;
 int lock_page (struct page*) ;
 int pagevec_init (struct pagevec*) ;
 int pagevec_lookup_tag (struct pagevec*,scalar_t__,scalar_t__*,int ) ;
 int pagevec_release (struct pagevec*) ;
 scalar_t__ unlikely (int) ;
 int unlock_page (struct page*) ;

__attribute__((used)) static struct page *last_fsync_dnode(struct f2fs_sb_info *sbi, nid_t ino)
{
 pgoff_t index;
 struct pagevec pvec;
 struct page *last_page = ((void*)0);
 int nr_pages;

 pagevec_init(&pvec);
 index = 0;

 while ((nr_pages = pagevec_lookup_tag(&pvec, NODE_MAPPING(sbi), &index,
    PAGECACHE_TAG_DIRTY))) {
  int i;

  for (i = 0; i < nr_pages; i++) {
   struct page *page = pvec.pages[i];

   if (unlikely(f2fs_cp_error(sbi))) {
    f2fs_put_page(last_page, 0);
    pagevec_release(&pvec);
    return ERR_PTR(-EIO);
   }

   if (!IS_DNODE(page) || !is_cold_node(page))
    continue;
   if (ino_of_node(page) != ino)
    continue;

   lock_page(page);

   if (unlikely(page->mapping != NODE_MAPPING(sbi))) {
continue_unlock:
    unlock_page(page);
    continue;
   }
   if (ino_of_node(page) != ino)
    goto continue_unlock;

   if (!PageDirty(page)) {

    goto continue_unlock;
   }

   if (last_page)
    f2fs_put_page(last_page, 0);

   get_page(page);
   last_page = page;
   unlock_page(page);
  }
  pagevec_release(&pvec);
  cond_resched();
 }
 return last_page;
}
