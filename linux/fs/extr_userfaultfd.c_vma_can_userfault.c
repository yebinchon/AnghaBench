
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {int dummy; } ;


 scalar_t__ is_vm_hugetlb_page (struct vm_area_struct*) ;
 scalar_t__ vma_is_anonymous (struct vm_area_struct*) ;
 scalar_t__ vma_is_shmem (struct vm_area_struct*) ;

__attribute__((used)) static inline bool vma_can_userfault(struct vm_area_struct *vma)
{
 return vma_is_anonymous(vma) || is_vm_hugetlb_page(vma) ||
  vma_is_shmem(vma);
}
