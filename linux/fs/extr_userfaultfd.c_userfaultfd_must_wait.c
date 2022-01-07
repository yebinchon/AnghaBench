
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct userfaultfd_ctx {struct mm_struct* mm; } ;
struct mm_struct {int mmap_sem; } ;
typedef int pud_t ;
typedef int pte_t ;
typedef int pmd_t ;
typedef int pgd_t ;
typedef int p4d_t ;


 int READ_ONCE (int ) ;
 int VM_BUG_ON (int) ;
 int * p4d_offset (int *,unsigned long) ;
 int p4d_present (int ) ;
 int * pgd_offset (struct mm_struct*,unsigned long) ;
 int pgd_present (int ) ;
 scalar_t__ pmd_none (int ) ;
 int * pmd_offset (int *,unsigned long) ;
 int pmd_present (int ) ;
 scalar_t__ pmd_trans_huge (int ) ;
 scalar_t__ pte_none (int ) ;
 int * pte_offset_map (int *,unsigned long) ;
 int pte_unmap (int *) ;
 int * pud_offset (int *,unsigned long) ;
 int pud_present (int ) ;
 int rwsem_is_locked (int *) ;

__attribute__((used)) static inline bool userfaultfd_must_wait(struct userfaultfd_ctx *ctx,
      unsigned long address,
      unsigned long flags,
      unsigned long reason)
{
 struct mm_struct *mm = ctx->mm;
 pgd_t *pgd;
 p4d_t *p4d;
 pud_t *pud;
 pmd_t *pmd, _pmd;
 pte_t *pte;
 bool ret = 1;

 VM_BUG_ON(!rwsem_is_locked(&mm->mmap_sem));

 pgd = pgd_offset(mm, address);
 if (!pgd_present(*pgd))
  goto out;
 p4d = p4d_offset(pgd, address);
 if (!p4d_present(*p4d))
  goto out;
 pud = pud_offset(p4d, address);
 if (!pud_present(*pud))
  goto out;
 pmd = pmd_offset(pud, address);
 _pmd = READ_ONCE(*pmd);
 if (pmd_none(_pmd))
  goto out;

 ret = 0;
 if (!pmd_present(_pmd))
  goto out;

 if (pmd_trans_huge(_pmd))
  goto out;





 pte = pte_offset_map(pmd, address);




 if (pte_none(*pte))
  ret = 1;
 pte_unmap(pte);

out:
 return ret;
}
