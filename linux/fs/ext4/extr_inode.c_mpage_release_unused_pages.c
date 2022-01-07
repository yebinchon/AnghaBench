
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pagevec {struct page** pages; } ;
struct page {int dummy; } ;
struct mpage_da_data {scalar_t__ first_page; scalar_t__ next_page; struct inode* inode; } ;
struct inode {int i_blkbits; struct address_space* i_mapping; } ;
struct address_space {int dummy; } ;
typedef int pgoff_t ;
typedef int ext4_lblk_t ;


 int BUG_ON (int) ;
 int ClearPageUptodate (struct page*) ;
 int PAGE_SHIFT ;
 int PAGE_SIZE ;
 int PageLocked (struct page*) ;
 int PageWriteback (struct page*) ;
 int block_invalidatepage (struct page*,int ,int ) ;
 int clear_page_dirty_for_io (struct page*) ;
 int ext4_es_remove_extent (struct inode*,int,int) ;
 scalar_t__ page_mapped (struct page*) ;
 int pagevec_init (struct pagevec*) ;
 int pagevec_lookup_range (struct pagevec*,struct address_space*,int*,int) ;
 int pagevec_release (struct pagevec*) ;
 int unlock_page (struct page*) ;

__attribute__((used)) static void mpage_release_unused_pages(struct mpage_da_data *mpd,
           bool invalidate)
{
 int nr_pages, i;
 pgoff_t index, end;
 struct pagevec pvec;
 struct inode *inode = mpd->inode;
 struct address_space *mapping = inode->i_mapping;


 if (mpd->first_page >= mpd->next_page)
  return;

 index = mpd->first_page;
 end = mpd->next_page - 1;
 if (invalidate) {
  ext4_lblk_t start, last;
  start = index << (PAGE_SHIFT - inode->i_blkbits);
  last = end << (PAGE_SHIFT - inode->i_blkbits);
  ext4_es_remove_extent(inode, start, last - start + 1);
 }

 pagevec_init(&pvec);
 while (index <= end) {
  nr_pages = pagevec_lookup_range(&pvec, mapping, &index, end);
  if (nr_pages == 0)
   break;
  for (i = 0; i < nr_pages; i++) {
   struct page *page = pvec.pages[i];

   BUG_ON(!PageLocked(page));
   BUG_ON(PageWriteback(page));
   if (invalidate) {
    if (page_mapped(page))
     clear_page_dirty_for_io(page);
    block_invalidatepage(page, 0, PAGE_SIZE);
    ClearPageUptodate(page);
   }
   unlock_page(page);
  }
  pagevec_release(&pvec);
 }
}
