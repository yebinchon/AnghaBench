
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {int dummy; } ;
struct hstate {int dummy; } ;


 struct hstate* hstate_vma (struct vm_area_struct*) ;
 unsigned long huge_page_shift (struct hstate*) ;

__attribute__((used)) static unsigned long hugetlb_vm_op_pagesize(struct vm_area_struct *vma)
{
 struct hstate *hstate = hstate_vma(vma);

 return 1UL << huge_page_shift(hstate);
}
