
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;


 int trace_page_ref_set (struct page*,int) ;

void __page_ref_set(struct page *page, int v)
{
 trace_page_ref_set(page, v);
}
