
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {int dummy; } ;
typedef int pmd_t ;


 int FOLL_WRITE ;
 unsigned long HPAGE_PMD_MASK ;
 int pmd_mkdirty (int ) ;
 int pmd_mkyoung (int ) ;
 scalar_t__ pmdp_set_access_flags (struct vm_area_struct*,unsigned long,int *,int ,int) ;
 int update_mmu_cache_pmd (struct vm_area_struct*,unsigned long,int *) ;

__attribute__((used)) static void touch_pmd(struct vm_area_struct *vma, unsigned long addr,
  pmd_t *pmd, int flags)
{
 pmd_t _pmd;

 _pmd = pmd_mkyoung(*pmd);
 if (flags & FOLL_WRITE)
  _pmd = pmd_mkdirty(_pmd);
 if (pmdp_set_access_flags(vma, addr & HPAGE_PMD_MASK,
    pmd, _pmd, flags & FOLL_WRITE))
  update_mmu_cache_pmd(vma, addr, pmd);
}
