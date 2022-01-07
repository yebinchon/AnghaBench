
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;


 int THP_COLLAPSE_ALLOC ;
 int THP_COLLAPSE_ALLOC_FAILED ;
 struct page* alloc_khugepaged_hugepage () ;
 int count_vm_event (int ) ;
 int khugepaged_alloc_sleep () ;
 int khugepaged_enabled () ;
 scalar_t__ likely (int ) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static struct page *khugepaged_alloc_hugepage(bool *wait)
{
 struct page *hpage;

 do {
  hpage = alloc_khugepaged_hugepage();
  if (!hpage) {
   count_vm_event(THP_COLLAPSE_ALLOC_FAILED);
   if (!*wait)
    return ((void*)0);

   *wait = 0;
   khugepaged_alloc_sleep();
  } else
   count_vm_event(THP_COLLAPSE_ALLOC);
 } while (unlikely(!hpage) && likely(khugepaged_enabled()));

 return hpage;
}
