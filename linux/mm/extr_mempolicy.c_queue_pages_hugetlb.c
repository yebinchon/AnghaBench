
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct queue_pages {unsigned long flags; int pagelist; } ;
struct page {int dummy; } ;
struct mm_walk {int mm; int vma; struct queue_pages* private; } ;
typedef int spinlock_t ;
typedef int pte_t ;


 int BUG () ;
 unsigned long MPOL_MF_MOVE ;
 unsigned long MPOL_MF_MOVE_ALL ;
 int hstate_vma (int ) ;
 int * huge_pte_lock (int ,int ,int *) ;
 int huge_ptep_get (int *) ;
 int isolate_huge_page (struct page*,int ) ;
 int page_mapcount (struct page*) ;
 struct page* pte_page (int ) ;
 int pte_present (int ) ;
 int queue_pages_required (struct page*,struct queue_pages*) ;
 int spin_unlock (int *) ;

__attribute__((used)) static int queue_pages_hugetlb(pte_t *pte, unsigned long hmask,
          unsigned long addr, unsigned long end,
          struct mm_walk *walk)
{
 BUG();

 return 0;
}
