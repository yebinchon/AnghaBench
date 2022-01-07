
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;


 unsigned long PAGE_SHIFT ;
 int PAGE_SIZE ;
 void* kmap_atomic (struct page*) ;
 int kunmap_atomic (void*) ;
 int memcpy (void*,void*,size_t) ;
 struct page* pfn_to_page (unsigned long) ;
 int pfn_valid (unsigned long) ;

__attribute__((used)) static int kdb_getphys(void *res, unsigned long addr, size_t size)
{
 unsigned long pfn;
 void *vaddr;
 struct page *page;

 pfn = (addr >> PAGE_SHIFT);
 if (!pfn_valid(pfn))
  return 1;
 page = pfn_to_page(pfn);
 vaddr = kmap_atomic(page);
 memcpy(res, vaddr + (addr & (PAGE_SIZE - 1)), size);
 kunmap_atomic(vaddr);

 return 0;
}
