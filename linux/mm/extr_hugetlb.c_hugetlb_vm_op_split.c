
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {int dummy; } ;


 int EINVAL ;
 int hstate_vma (struct vm_area_struct*) ;
 unsigned long huge_page_mask (int ) ;

__attribute__((used)) static int hugetlb_vm_op_split(struct vm_area_struct *vma, unsigned long addr)
{
 if (addr & ~(huge_page_mask(hstate_vma(vma))))
  return -EINVAL;
 return 0;
}
