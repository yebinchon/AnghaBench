
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {int vm_flags; } ;
struct resv_map {int dummy; } ;


 unsigned long HPAGE_RESV_MASK ;
 int VM_BUG_ON_VMA (int,struct vm_area_struct*) ;
 int VM_MAYSHARE ;
 unsigned long get_vma_private_data (struct vm_area_struct*) ;
 int is_vm_hugetlb_page (struct vm_area_struct*) ;
 int set_vma_private_data (struct vm_area_struct*,unsigned long) ;

__attribute__((used)) static void set_vma_resv_map(struct vm_area_struct *vma, struct resv_map *map)
{
 VM_BUG_ON_VMA(!is_vm_hugetlb_page(vma), vma);
 VM_BUG_ON_VMA(vma->vm_flags & VM_MAYSHARE, vma);

 set_vma_private_data(vma, (get_vma_private_data(vma) &
    HPAGE_RESV_MASK) | (unsigned long)map);
}
