
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int _mapcount; } ;


 int NR_ANON_MAPPED ;
 int PageAnon (struct page*) ;
 int PageMlocked (struct page*) ;
 scalar_t__ PageTransCompound (struct page*) ;
 int __dec_node_page_state (struct page*,int ) ;
 int atomic_add_negative (int,int *) ;
 int clear_page_mlock (struct page*) ;
 int compound_head (struct page*) ;
 int deferred_split_huge_page (int ) ;
 void page_remove_anon_compound_rmap (struct page*) ;
 void page_remove_file_rmap (struct page*,int) ;
 scalar_t__ unlikely (int ) ;

void page_remove_rmap(struct page *page, bool compound)
{
 if (!PageAnon(page))
  return page_remove_file_rmap(page, compound);

 if (compound)
  return page_remove_anon_compound_rmap(page);


 if (!atomic_add_negative(-1, &page->_mapcount))
  return;






 __dec_node_page_state(page, NR_ANON_MAPPED);

 if (unlikely(PageMlocked(page)))
  clear_page_mlock(page);

 if (PageTransCompound(page))
  deferred_split_huge_page(compound_head(page));
}
