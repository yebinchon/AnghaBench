
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {unsigned long vm_start; } ;
struct page {int dummy; } ;


 int ENXIO ;
 scalar_t__ PAGE_SIZE ;
 int vm_insert_page (struct vm_area_struct*,unsigned long,struct page*) ;
 unsigned long vma_pages (struct vm_area_struct*) ;

__attribute__((used)) static int __vm_map_pages(struct vm_area_struct *vma, struct page **pages,
    unsigned long num, unsigned long offset)
{
 unsigned long count = vma_pages(vma);
 unsigned long uaddr = vma->vm_start;
 int ret, i;


 if (offset >= num)
  return -ENXIO;


 if (count > num - offset)
  return -ENXIO;

 for (i = 0; i < count; i++) {
  ret = vm_insert_page(vma, uaddr, pages[offset + i]);
  if (ret < 0)
   return ret;
  uaddr += PAGE_SIZE;
 }

 return 0;
}
