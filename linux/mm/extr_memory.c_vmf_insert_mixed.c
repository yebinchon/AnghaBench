
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_fault_t ;
struct vm_area_struct {int dummy; } ;
typedef int pfn_t ;


 int __vm_insert_mixed (struct vm_area_struct*,unsigned long,int ,int) ;

vm_fault_t vmf_insert_mixed(struct vm_area_struct *vma, unsigned long addr,
  pfn_t pfn)
{
 return __vm_insert_mixed(vma, addr, pfn, 0);
}
