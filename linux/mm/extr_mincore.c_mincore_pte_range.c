
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int swp_entry_t ;
struct vm_area_struct {int dummy; } ;
struct mm_walk {unsigned char* private; int mm; struct vm_area_struct* vma; } ;
typedef int spinlock_t ;
typedef int pte_t ;
typedef int pmd_t ;


 unsigned long PAGE_SHIFT ;
 unsigned long PAGE_SIZE ;
 int WARN_ON (int) ;
 int __mincore_unmapped_range (unsigned long,unsigned long,struct vm_area_struct*,unsigned char*) ;
 int cond_resched () ;
 int memset (unsigned char*,int,int) ;
 unsigned char mincore_page (int ,int ) ;
 scalar_t__ non_swap_entry (int ) ;
 int * pmd_trans_huge_lock (int *,struct vm_area_struct*) ;
 scalar_t__ pmd_trans_unstable (int *) ;
 scalar_t__ pte_none (int ) ;
 int * pte_offset_map_lock (int ,int *,unsigned long,int **) ;
 scalar_t__ pte_present (int ) ;
 int pte_to_swp_entry (int ) ;
 int pte_unmap_unlock (int *,int *) ;
 int spin_unlock (int *) ;
 int swap_address_space (int ) ;
 int swp_offset (int ) ;

__attribute__((used)) static int mincore_pte_range(pmd_t *pmd, unsigned long addr, unsigned long end,
   struct mm_walk *walk)
{
 spinlock_t *ptl;
 struct vm_area_struct *vma = walk->vma;
 pte_t *ptep;
 unsigned char *vec = walk->private;
 int nr = (end - addr) >> PAGE_SHIFT;

 ptl = pmd_trans_huge_lock(pmd, vma);
 if (ptl) {
  memset(vec, 1, nr);
  spin_unlock(ptl);
  goto out;
 }

 if (pmd_trans_unstable(pmd)) {
  __mincore_unmapped_range(addr, end, vma, vec);
  goto out;
 }

 ptep = pte_offset_map_lock(walk->mm, pmd, addr, &ptl);
 for (; addr != end; ptep++, addr += PAGE_SIZE) {
  pte_t pte = *ptep;

  if (pte_none(pte))
   __mincore_unmapped_range(addr, addr + PAGE_SIZE,
       vma, vec);
  else if (pte_present(pte))
   *vec = 1;
  else {
   swp_entry_t entry = pte_to_swp_entry(pte);

   if (non_swap_entry(entry)) {




    *vec = 1;
   } else {




    WARN_ON(1);
    *vec = 1;

   }
  }
  vec++;
 }
 pte_unmap_unlock(ptep - 1, ptl);
out:
 walk->private += nr;
 cond_resched();
 return 0;
}
