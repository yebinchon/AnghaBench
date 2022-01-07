
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct vm_fault {int flags; unsigned long address; int ptl; int * pmd; TYPE_1__* vma; } ;
typedef int pmd_t ;
struct TYPE_3__ {int vm_mm; } ;


 int FAULT_FLAG_WRITE ;
 unsigned long HPAGE_PMD_MASK ;
 int pmd_lock (int ,int *) ;
 int pmd_mkdirty (int ) ;
 int pmd_mkyoung (int ) ;
 int pmd_same (int ,int ) ;
 scalar_t__ pmdp_set_access_flags (TYPE_1__*,unsigned long,int *,int ,int) ;
 int spin_unlock (int ) ;
 scalar_t__ unlikely (int) ;
 int update_mmu_cache_pmd (TYPE_1__*,unsigned long,int *) ;

void huge_pmd_set_accessed(struct vm_fault *vmf, pmd_t orig_pmd)
{
 pmd_t entry;
 unsigned long haddr;
 bool write = vmf->flags & FAULT_FLAG_WRITE;

 vmf->ptl = pmd_lock(vmf->vma->vm_mm, vmf->pmd);
 if (unlikely(!pmd_same(*vmf->pmd, orig_pmd)))
  goto unlock;

 entry = pmd_mkyoung(orig_pmd);
 if (write)
  entry = pmd_mkdirty(entry);
 haddr = vmf->address & HPAGE_PMD_MASK;
 if (pmdp_set_access_flags(vmf->vma, haddr, vmf->pmd, entry, write))
  update_mmu_cache_pmd(vmf->vma, vmf->address, vmf->pmd);

unlock:
 spin_unlock(vmf->ptl);
}
