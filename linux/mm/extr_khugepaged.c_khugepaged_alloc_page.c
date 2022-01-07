
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
typedef int gfp_t ;


 int VM_BUG_ON (int) ;

__attribute__((used)) static struct page *
khugepaged_alloc_page(struct page **hpage, gfp_t gfp, int node)
{
 VM_BUG_ON(!*hpage);

 return *hpage;
}
