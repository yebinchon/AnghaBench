
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;


 int PageAnon (struct page*) ;
 int PageHuge (struct page*) ;
 scalar_t__ PageTransHuge (struct page*) ;
 struct page* compound_head (struct page*) ;
 scalar_t__ get_page_unless_zero (struct page*) ;
 int page_to_pfn (struct page*) ;
 int pr_err (char*,int ) ;
 int pr_info (char*,int ) ;
 int put_page (struct page*) ;

int get_hwpoison_page(struct page *page)
{
 struct page *head = compound_head(page);

 if (!PageHuge(head) && PageTransHuge(head)) {






  if (!PageAnon(head)) {
   pr_err("Memory failure: %#lx: non anonymous thp\n",
    page_to_pfn(page));
   return 0;
  }
 }

 if (get_page_unless_zero(head)) {
  if (head == compound_head(page))
   return 1;

  pr_info("Memory failure: %#lx cannot catch tail\n",
   page_to_pfn(page));
  put_page(head);
 }

 return 0;
}
