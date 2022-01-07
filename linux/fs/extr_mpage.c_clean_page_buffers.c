
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;


 int clean_buffers (struct page*,unsigned int) ;

void clean_page_buffers(struct page *page)
{
 clean_buffers(page, ~0U);
}
