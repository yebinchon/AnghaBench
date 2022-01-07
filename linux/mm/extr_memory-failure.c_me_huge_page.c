
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct address_space {int dummy; } ;


 int MF_DELAYED ;
 int MF_RECOVERED ;
 scalar_t__ PageAnon (struct page*) ;
 int PageHuge (struct page*) ;
 struct page* compound_head (struct page*) ;
 int dissolve_free_huge_page (struct page*) ;
 int lock_page (struct page*) ;
 struct address_space* page_mapping (struct page*) ;
 int put_page (struct page*) ;
 int truncate_error_page (struct page*,unsigned long,struct address_space*) ;
 int unlock_page (struct page*) ;

__attribute__((used)) static int me_huge_page(struct page *p, unsigned long pfn)
{
 int res = 0;
 struct page *hpage = compound_head(p);
 struct address_space *mapping;

 if (!PageHuge(hpage))
  return MF_DELAYED;

 mapping = page_mapping(hpage);
 if (mapping) {
  res = truncate_error_page(hpage, pfn, mapping);
 } else {
  unlock_page(hpage);





  if (PageAnon(hpage))
   put_page(hpage);
  dissolve_free_huge_page(p);
  res = MF_RECOVERED;
  lock_page(hpage);
 }

 return res;
}
