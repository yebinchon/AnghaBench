
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {int dummy; } ;
struct queue_pages {unsigned long flags; int pagelist; } ;
struct page {int dummy; } ;
struct mm_walk {int mm; struct queue_pages* private; struct vm_area_struct* vma; } ;
typedef int spinlock_t ;
typedef int pte_t ;
typedef int pmd_t ;


 int EIO ;
 unsigned long MPOL_MF_MOVE ;
 unsigned long MPOL_MF_MOVE_ALL ;
 scalar_t__ PAGE_SIZE ;
 scalar_t__ PageReserved (struct page*) ;
 int cond_resched () ;
 scalar_t__ migrate_page_add (struct page*,int ,unsigned long) ;
 int * pmd_trans_huge_lock (int *,struct vm_area_struct*) ;
 scalar_t__ pmd_trans_unstable (int *) ;
 int * pte_offset_map_lock (int ,int *,unsigned long,int **) ;
 int pte_present (int ) ;
 int pte_unmap_unlock (int *,int *) ;
 int queue_pages_pmd (int *,int *,unsigned long,unsigned long,struct mm_walk*) ;
 int queue_pages_required (struct page*,struct queue_pages*) ;
 struct page* vm_normal_page (struct vm_area_struct*,unsigned long,int ) ;
 int vma_migratable (struct vm_area_struct*) ;

__attribute__((used)) static int queue_pages_pte_range(pmd_t *pmd, unsigned long addr,
   unsigned long end, struct mm_walk *walk)
{
 struct vm_area_struct *vma = walk->vma;
 struct page *page;
 struct queue_pages *qp = walk->private;
 unsigned long flags = qp->flags;
 int ret;
 bool has_unmovable = 0;
 pte_t *pte;
 spinlock_t *ptl;

 ptl = pmd_trans_huge_lock(pmd, vma);
 if (ptl) {
  ret = queue_pages_pmd(pmd, ptl, addr, end, walk);
  if (ret != 2)
   return ret;
 }


 if (pmd_trans_unstable(pmd))
  return 0;

 pte = pte_offset_map_lock(walk->mm, pmd, addr, &ptl);
 for (; addr != end; pte++, addr += PAGE_SIZE) {
  if (!pte_present(*pte))
   continue;
  page = vm_normal_page(vma, addr, *pte);
  if (!page)
   continue;




  if (PageReserved(page))
   continue;
  if (!queue_pages_required(page, qp))
   continue;
  if (flags & (MPOL_MF_MOVE | MPOL_MF_MOVE_ALL)) {

   if (!vma_migratable(vma)) {
    has_unmovable = 1;
    break;
   }






   if (migrate_page_add(page, qp->pagelist, flags))
    has_unmovable = 1;
  } else
   break;
 }
 pte_unmap_unlock(pte - 1, ptl);
 cond_resched();

 if (has_unmovable)
  return 1;

 return addr != end ? -EIO : 0;
}
