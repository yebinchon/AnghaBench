
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zone {int dummy; } ;
struct vm_area_struct {int vm_mm; } ;
struct pagevec {int dummy; } ;
struct page {int dummy; } ;
typedef int spinlock_t ;
typedef int pte_t ;


 scalar_t__ PAGE_SIZE ;
 scalar_t__ PageTransCompound (struct page*) ;
 int * get_locked_pte (int ,unsigned long,int **) ;
 int get_page (struct page*) ;
 unsigned long p4d_addr_end (unsigned long,unsigned long) ;
 struct zone* page_zone (struct page*) ;
 scalar_t__ pagevec_add (struct pagevec*,struct page*) ;
 unsigned long pgd_addr_end (unsigned long,unsigned long) ;
 unsigned long pmd_addr_end (unsigned long,unsigned long) ;
 scalar_t__ pte_present (int ) ;
 int pte_unmap_unlock (int *,int *) ;
 unsigned long pud_addr_end (unsigned long,unsigned long) ;
 struct page* vm_normal_page (struct vm_area_struct*,unsigned long,int ) ;

__attribute__((used)) static unsigned long __munlock_pagevec_fill(struct pagevec *pvec,
   struct vm_area_struct *vma, struct zone *zone,
   unsigned long start, unsigned long end)
{
 pte_t *pte;
 spinlock_t *ptl;






 pte = get_locked_pte(vma->vm_mm, start, &ptl);

 end = pgd_addr_end(start, end);
 end = p4d_addr_end(start, end);
 end = pud_addr_end(start, end);
 end = pmd_addr_end(start, end);


 start += PAGE_SIZE;
 while (start < end) {
  struct page *page = ((void*)0);
  pte++;
  if (pte_present(*pte))
   page = vm_normal_page(vma, start, *pte);




  if (!page || page_zone(page) != zone)
   break;





  if (PageTransCompound(page))
   break;

  get_page(page);




  start += PAGE_SIZE;
  if (pagevec_add(pvec, page) == 0)
   break;
 }
 pte_unmap_unlock(pte, ptl);
 return start;
}
