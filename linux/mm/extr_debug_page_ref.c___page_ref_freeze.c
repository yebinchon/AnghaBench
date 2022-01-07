
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;


 int trace_page_ref_freeze (struct page*,int,int) ;

void __page_ref_freeze(struct page *page, int v, int ret)
{
 trace_page_ref_freeze(page, v, ret);
}
