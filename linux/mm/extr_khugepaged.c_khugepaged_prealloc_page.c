
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;


 struct page* khugepaged_alloc_hugepage (int*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static bool khugepaged_prealloc_page(struct page **hpage, bool *wait)
{
 if (!*hpage)
  *hpage = khugepaged_alloc_hugepage(wait);

 if (unlikely(!*hpage))
  return 0;

 return 1;
}
