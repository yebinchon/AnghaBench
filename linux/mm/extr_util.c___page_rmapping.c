
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {scalar_t__ mapping; } ;


 unsigned long PAGE_MAPPING_FLAGS ;

__attribute__((used)) static inline void *__page_rmapping(struct page *page)
{
 unsigned long mapping;

 mapping = (unsigned long)page->mapping;
 mapping &= ~PAGE_MAPPING_FLAGS;

 return (void *)mapping;
}
