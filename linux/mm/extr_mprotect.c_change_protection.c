
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {int dummy; } ;
typedef int pgprot_t ;


 unsigned long change_protection_range (struct vm_area_struct*,unsigned long,unsigned long,int ,int,int) ;
 unsigned long hugetlb_change_protection (struct vm_area_struct*,unsigned long,unsigned long,int ) ;
 scalar_t__ is_vm_hugetlb_page (struct vm_area_struct*) ;

unsigned long change_protection(struct vm_area_struct *vma, unsigned long start,
         unsigned long end, pgprot_t newprot,
         int dirty_accountable, int prot_numa)
{
 unsigned long pages;

 if (is_vm_hugetlb_page(vma))
  pages = hugetlb_change_protection(vma, start, end, newprot);
 else
  pages = change_protection_range(vma, start, end, newprot, dirty_accountable, prot_numa);

 return pages;
}
