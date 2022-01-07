
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;


 int PageWaiters (struct page*) ;
 int wake_up_page_bit (struct page*,int) ;

__attribute__((used)) static void wake_up_page(struct page *page, int bit)
{
 if (!PageWaiters(page))
  return;
 wake_up_page_bit(page, bit);
}
