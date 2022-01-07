
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct page {int dummy; } ;
struct address_space {TYPE_1__* a_ops; } ;
struct TYPE_2__ {void (* freepage ) (struct page*) ;} ;


 int HPAGE_PMD_NR ;
 int PageHuge (struct page*) ;
 scalar_t__ PageTransHuge (struct page*) ;
 int VM_BUG_ON_PAGE (int,struct page*) ;
 scalar_t__ page_count (struct page*) ;
 int page_ref_sub (struct page*,int ) ;
 int put_page (struct page*) ;

__attribute__((used)) static void page_cache_free_page(struct address_space *mapping,
    struct page *page)
{
 void (*freepage)(struct page *);

 freepage = mapping->a_ops->freepage;
 if (freepage)
  freepage(page);

 if (PageTransHuge(page) && !PageHuge(page)) {
  page_ref_sub(page, HPAGE_PMD_NR);
  VM_BUG_ON_PAGE(page_count(page) <= 0, page);
 } else {
  put_page(page);
 }
}
