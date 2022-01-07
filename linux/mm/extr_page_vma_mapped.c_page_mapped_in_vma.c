
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {unsigned long vm_start; unsigned long vm_end; } ;
struct page_vma_mapped_walk {int address; int flags; struct vm_area_struct* vma; struct page* page; } ;
struct page {int dummy; } ;


 int PAGE_SIZE ;
 int PVMW_SYNC ;
 unsigned long __vma_address (struct page*,struct vm_area_struct*) ;
 int hpage_nr_pages (struct page*) ;
 int max (unsigned long,unsigned long) ;
 int page_vma_mapped_walk (struct page_vma_mapped_walk*) ;
 int page_vma_mapped_walk_done (struct page_vma_mapped_walk*) ;
 scalar_t__ unlikely (int) ;

int page_mapped_in_vma(struct page *page, struct vm_area_struct *vma)
{
 struct page_vma_mapped_walk pvmw = {
  .page = page,
  .vma = vma,
  .flags = PVMW_SYNC,
 };
 unsigned long start, end;

 start = __vma_address(page, vma);
 end = start + PAGE_SIZE * (hpage_nr_pages(page) - 1);

 if (unlikely(end < vma->vm_start || start >= vma->vm_end))
  return 0;
 pvmw.address = max(start, vma->vm_start);
 if (!page_vma_mapped_walk(&pvmw))
  return 0;
 page_vma_mapped_walk_done(&pvmw);
 return 1;
}
