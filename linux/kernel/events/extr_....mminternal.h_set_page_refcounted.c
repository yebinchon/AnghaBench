
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;


 int PageTail (struct page*) ;
 int VM_BUG_ON_PAGE (int ,struct page*) ;
 int page_ref_count (struct page*) ;
 int set_page_count (struct page*,int) ;

__attribute__((used)) static inline void set_page_refcounted(struct page *page)
{
 VM_BUG_ON_PAGE(PageTail(page), page);
 VM_BUG_ON_PAGE(page_ref_count(page), page);
 set_page_count(page, 1);
}
