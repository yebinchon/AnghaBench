
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;


 unsigned int MAX_PAGES ;
 int PAGE_SIZE ;
 int assert (int) ;

__attribute__((used)) static void set_pages(struct page **pages, const unsigned *array, unsigned num)
{
 unsigned int i;

 assert(num < MAX_PAGES);
 for (i = 0; i < num; i++)
  pages[i] = (struct page *)(unsigned long)
      ((1 + array[i]) * PAGE_SIZE);
}
