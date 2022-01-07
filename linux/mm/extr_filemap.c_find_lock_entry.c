
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct address_space {int dummy; } ;
typedef scalar_t__ pgoff_t ;


 int VM_BUG_ON_PAGE (int,struct page*) ;
 struct page* find_get_entry (struct address_space*,scalar_t__) ;
 int lock_page (struct page*) ;
 struct address_space* page_mapping (struct page*) ;
 scalar_t__ page_to_pgoff (struct page*) ;
 int put_page (struct page*) ;
 scalar_t__ unlikely (int) ;
 int unlock_page (struct page*) ;
 int xa_is_value (struct page*) ;

struct page *find_lock_entry(struct address_space *mapping, pgoff_t offset)
{
 struct page *page;

repeat:
 page = find_get_entry(mapping, offset);
 if (page && !xa_is_value(page)) {
  lock_page(page);

  if (unlikely(page_mapping(page) != mapping)) {
   unlock_page(page);
   put_page(page);
   goto repeat;
  }
  VM_BUG_ON_PAGE(page_to_pgoff(page) != offset, page);
 }
 return page;
}
