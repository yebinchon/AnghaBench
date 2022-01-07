
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {scalar_t__ mapping; } ;


 int PageHuge (struct page*) ;

__attribute__((used)) static inline bool PageHugeTemporary(struct page *page)
{
 if (!PageHuge(page))
  return 0;

 return (unsigned long)page[2].mapping == -1U;
}
