
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct queue_pages {unsigned long flags; int pagelist; } ;
struct page {int dummy; } ;
struct mm_walk {int vma; struct queue_pages* private; } ;
typedef int spinlock_t ;
typedef int pmd_t ;


 int EIO ;
 unsigned long MPOL_MF_MOVE ;
 unsigned long MPOL_MF_MOVE_ALL ;
 int __split_huge_pmd (int ,int *,unsigned long,int,int *) ;
 scalar_t__ is_huge_zero_page (struct page*) ;
 int is_pmd_migration_entry (int ) ;
 scalar_t__ migrate_page_add (struct page*,int ,unsigned long) ;
 struct page* pmd_page (int ) ;
 int queue_pages_required (struct page*,struct queue_pages*) ;
 int spin_unlock (int *) ;
 scalar_t__ unlikely (int ) ;
 int vma_migratable (int ) ;

__attribute__((used)) static int queue_pages_pmd(pmd_t *pmd, spinlock_t *ptl, unsigned long addr,
    unsigned long end, struct mm_walk *walk)
{
 int ret = 0;
 struct page *page;
 struct queue_pages *qp = walk->private;
 unsigned long flags;

 if (unlikely(is_pmd_migration_entry(*pmd))) {
  ret = -EIO;
  goto unlock;
 }
 page = pmd_page(*pmd);
 if (is_huge_zero_page(page)) {
  spin_unlock(ptl);
  __split_huge_pmd(walk->vma, pmd, addr, 0, ((void*)0));
  ret = 2;
  goto out;
 }
 if (!queue_pages_required(page, qp))
  goto unlock;

 flags = qp->flags;

 if (flags & (MPOL_MF_MOVE | MPOL_MF_MOVE_ALL)) {
  if (!vma_migratable(walk->vma) ||
      migrate_page_add(page, qp->pagelist, flags)) {
   ret = 1;
   goto unlock;
  }
 } else
  ret = -EIO;
unlock:
 spin_unlock(ptl);
out:
 return ret;
}
