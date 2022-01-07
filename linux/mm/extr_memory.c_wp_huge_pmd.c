
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int vm_fault_t ;
struct vm_fault {int address; int pmd; TYPE_2__* vma; } ;
typedef int pmd_t ;
struct TYPE_6__ {int vm_flags; TYPE_1__* vm_ops; } ;
struct TYPE_5__ {int (* huge_fault ) (struct vm_fault*,int ) ;} ;


 int PE_SIZE_PMD ;
 int VM_BUG_ON_VMA (int,TYPE_2__*) ;
 int VM_FAULT_FALLBACK ;
 int VM_SHARED ;
 int __split_huge_pmd (TYPE_2__*,int ,int ,int,int *) ;
 int do_huge_pmd_wp_page (struct vm_fault*,int ) ;
 int stub1 (struct vm_fault*,int ) ;
 scalar_t__ vma_is_anonymous (TYPE_2__*) ;

__attribute__((used)) static inline vm_fault_t wp_huge_pmd(struct vm_fault *vmf, pmd_t orig_pmd)
{
 if (vma_is_anonymous(vmf->vma))
  return do_huge_pmd_wp_page(vmf, orig_pmd);
 if (vmf->vma->vm_ops->huge_fault)
  return vmf->vma->vm_ops->huge_fault(vmf, PE_SIZE_PMD);


 VM_BUG_ON_VMA(vmf->vma->vm_flags & VM_SHARED, vmf->vma);
 __split_huge_pmd(vmf->vma, vmf->pmd, vmf->address, 0, ((void*)0));

 return VM_FAULT_FALLBACK;
}
