
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;


 int MAX_ORDER_NR_PAGES ;
 int page_to_pfn (struct page*) ;
 struct page* pfn_to_page (unsigned long) ;
 int pfn_valid (unsigned long) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static inline struct page *mem_map_next(struct page *iter,
      struct page *base, int offset)
{
 if (unlikely((offset & (MAX_ORDER_NR_PAGES - 1)) == 0)) {
  unsigned long pfn = page_to_pfn(base) + offset;
  if (!pfn_valid(pfn))
   return ((void*)0);
  return pfn_to_page(pfn);
 }
 return iter + 1;
}
