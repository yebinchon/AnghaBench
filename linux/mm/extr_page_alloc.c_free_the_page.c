
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;


 int __free_pages_ok (struct page*,unsigned int) ;
 int free_unref_page (struct page*) ;

__attribute__((used)) static inline void free_the_page(struct page *page, unsigned int order)
{
 if (order == 0)
  free_unref_page(page);
 else
  __free_pages_ok(page, order);
}
