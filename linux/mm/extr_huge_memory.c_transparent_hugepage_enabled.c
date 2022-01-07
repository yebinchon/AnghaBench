
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {unsigned long vm_end; } ;


 unsigned long HPAGE_PMD_MASK ;
 unsigned long HPAGE_PMD_SIZE ;
 int __transparent_hugepage_enabled (struct vm_area_struct*) ;
 int shmem_huge_enabled (struct vm_area_struct*) ;
 int transhuge_vma_suitable (struct vm_area_struct*,unsigned long) ;
 scalar_t__ vma_is_anonymous (struct vm_area_struct*) ;
 scalar_t__ vma_is_shmem (struct vm_area_struct*) ;

bool transparent_hugepage_enabled(struct vm_area_struct *vma)
{

 unsigned long addr = (vma->vm_end & HPAGE_PMD_MASK) - HPAGE_PMD_SIZE;

 if (!transhuge_vma_suitable(vma, addr))
  return 0;
 if (vma_is_anonymous(vma))
  return __transparent_hugepage_enabled(vma);
 if (vma_is_shmem(vma))
  return shmem_huge_enabled(vma);

 return 0;
}
