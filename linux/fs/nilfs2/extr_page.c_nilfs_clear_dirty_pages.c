
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pagevec {struct page** pages; } ;
struct page {int dummy; } ;
struct address_space {int dummy; } ;
typedef int pgoff_t ;


 int PAGECACHE_TAG_DIRTY ;
 int cond_resched () ;
 int lock_page (struct page*) ;
 int nilfs_clear_dirty_page (struct page*,int) ;
 unsigned int pagevec_count (struct pagevec*) ;
 int pagevec_init (struct pagevec*) ;
 scalar_t__ pagevec_lookup_tag (struct pagevec*,struct address_space*,int *,int ) ;
 int pagevec_release (struct pagevec*) ;
 int unlock_page (struct page*) ;

void nilfs_clear_dirty_pages(struct address_space *mapping, bool silent)
{
 struct pagevec pvec;
 unsigned int i;
 pgoff_t index = 0;

 pagevec_init(&pvec);

 while (pagevec_lookup_tag(&pvec, mapping, &index,
     PAGECACHE_TAG_DIRTY)) {
  for (i = 0; i < pagevec_count(&pvec); i++) {
   struct page *page = pvec.pages[i];

   lock_page(page);
   nilfs_clear_dirty_page(page, silent);
   unlock_page(page);
  }
  pagevec_release(&pvec);
  cond_resched();
 }
}
