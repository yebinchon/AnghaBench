
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int vm_fault_t ;
struct vm_fault {TYPE_2__* vma; } ;
struct TYPE_4__ {TYPE_1__* vm_ops; } ;
struct TYPE_3__ {int (* huge_fault ) (struct vm_fault*,int ) ;} ;


 int PE_SIZE_PMD ;
 int VM_FAULT_FALLBACK ;
 int do_huge_pmd_anonymous_page (struct vm_fault*) ;
 int stub1 (struct vm_fault*,int ) ;
 scalar_t__ vma_is_anonymous (TYPE_2__*) ;

__attribute__((used)) static inline vm_fault_t create_huge_pmd(struct vm_fault *vmf)
{
 if (vma_is_anonymous(vmf->vma))
  return do_huge_pmd_anonymous_page(vmf);
 if (vmf->vma->vm_ops->huge_fault)
  return vmf->vma->vm_ops->huge_fault(vmf, PE_SIZE_PMD);
 return VM_FAULT_FALLBACK;
}
