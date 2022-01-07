
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_fault_t ;
struct vm_area_struct {int vm_page_prot; } ;


 int vmf_insert_pfn_prot (struct vm_area_struct*,unsigned long,unsigned long,int ) ;

vm_fault_t vmf_insert_pfn(struct vm_area_struct *vma, unsigned long addr,
   unsigned long pfn)
{
 return vmf_insert_pfn_prot(vma, addr, pfn, vma->vm_page_prot);
}
