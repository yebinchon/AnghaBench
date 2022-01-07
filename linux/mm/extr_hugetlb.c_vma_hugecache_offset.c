
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {unsigned long vm_start; unsigned long vm_pgoff; } ;
struct hstate {int dummy; } ;
typedef unsigned long pgoff_t ;


 unsigned long huge_page_order (struct hstate*) ;
 unsigned long huge_page_shift (struct hstate*) ;

__attribute__((used)) static pgoff_t vma_hugecache_offset(struct hstate *h,
   struct vm_area_struct *vma, unsigned long address)
{
 return ((address - vma->vm_start) >> huge_page_shift(h)) +
   (vma->vm_pgoff >> huge_page_order(h));
}
