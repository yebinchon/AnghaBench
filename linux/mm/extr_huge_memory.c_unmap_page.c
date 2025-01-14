
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
typedef enum ttu_flags { ____Placeholder_ttu_flags } ttu_flags ;


 scalar_t__ PageAnon (struct page*) ;
 int PageHead (struct page*) ;
 int TTU_IGNORE_ACCESS ;
 int TTU_IGNORE_MLOCK ;
 int TTU_RMAP_LOCKED ;
 int TTU_SPLIT_FREEZE ;
 int TTU_SPLIT_HUGE_PMD ;
 int VM_BUG_ON_PAGE (int,struct page*) ;
 int try_to_unmap (struct page*,int) ;

__attribute__((used)) static void unmap_page(struct page *page)
{
 enum ttu_flags ttu_flags = TTU_IGNORE_MLOCK | TTU_IGNORE_ACCESS |
  TTU_RMAP_LOCKED | TTU_SPLIT_HUGE_PMD;
 bool unmap_success;

 VM_BUG_ON_PAGE(!PageHead(page), page);

 if (PageAnon(page))
  ttu_flags |= TTU_SPLIT_FREEZE;

 unmap_success = try_to_unmap(page, ttu_flags);
 VM_BUG_ON_PAGE(!unmap_success, page);
}
