
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct address_space {int dummy; } ;


 int ClearPageUptodate (struct page*) ;
 int SetPageError (struct page*) ;
 int SetPageUptodate (struct page*) ;
 int end_page_writeback (struct page*) ;
 int mapping_set_error (struct address_space*,int) ;
 struct address_space* page_mapping (struct page*) ;
 int unlock_page (struct page*) ;

void page_endio(struct page *page, bool is_write, int err)
{
 if (!is_write) {
  if (!err) {
   SetPageUptodate(page);
  } else {
   ClearPageUptodate(page);
   SetPageError(page);
  }
  unlock_page(page);
 } else {
  if (err) {
   struct address_space *mapping;

   SetPageError(page);
   mapping = page_mapping(page);
   if (mapping)
    mapping_set_error(mapping, err);
  }
  end_page_writeback(page);
 }
}
