
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct linked_page {struct linked_page* next; } ;


 struct linked_page* safe_pages_list ;

__attribute__((used)) static void recycle_safe_page(void *page_address)
{
 struct linked_page *lp = page_address;

 lp->next = safe_pages_list;
 safe_pages_list = lp;
}
