
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {int dummy; } ;
struct page {int dummy; } ;



struct page *follow_page(struct vm_area_struct *vma, unsigned long address,
    unsigned int foll_flags)
{
 return ((void*)0);
}
