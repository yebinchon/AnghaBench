
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;


 int HPAGE_PMD_ORDER ;
 int alloc_hugepage_khugepaged_gfpmask () ;
 struct page* alloc_pages (int ,int ) ;
 int prep_transhuge_page (struct page*) ;

__attribute__((used)) static inline struct page *alloc_khugepaged_hugepage(void)
{
 struct page *page;

 page = alloc_pages(alloc_hugepage_khugepaged_gfpmask(),
      HPAGE_PMD_ORDER);
 if (page)
  prep_transhuge_page(page);
 return page;
}
