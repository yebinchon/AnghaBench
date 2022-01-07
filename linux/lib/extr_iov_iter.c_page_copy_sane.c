
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;


 int PAGE_SHIFT ;
 size_t PAGE_SIZE ;
 int WARN_ON (int) ;
 struct page* compound_head (struct page*) ;
 scalar_t__ likely (int) ;
 size_t page_size (struct page*) ;

__attribute__((used)) static inline bool page_copy_sane(struct page *page, size_t offset, size_t n)
{
 struct page *head;
 size_t v = n + offset;
 if (n <= v && v <= PAGE_SIZE)
  return 1;

 head = compound_head(page);
 v += (page - head) << PAGE_SHIFT;

 if (likely(n <= v && v <= (page_size(head))))
  return 1;
 WARN_ON(1);
 return 0;
}
