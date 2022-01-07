
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct resource {unsigned long start; unsigned long end; } ;
struct page {int dummy; } ;
struct dev_dax {TYPE_1__* region; } ;
typedef unsigned long phys_addr_t ;
typedef int pgoff_t ;
struct TYPE_2__ {int align; struct resource res; } ;


 int PAGE_SIZE ;
 unsigned long PFN_PHYS (int ) ;
 scalar_t__ get_nfit_res (unsigned long) ;
 int page_to_pfn (struct page*) ;
 struct page* vmalloc_to_page (void*) ;

phys_addr_t dax_pgoff_to_phys(struct dev_dax *dev_dax, pgoff_t pgoff,
  unsigned long size)
{
 struct resource *res = &dev_dax->region->res;
 phys_addr_t addr;

 addr = pgoff * PAGE_SIZE + res->start;
 if (addr >= res->start && addr <= res->end) {
  if (addr + size - 1 <= res->end) {
   if (get_nfit_res(addr)) {
    struct page *page;

    if (dev_dax->region->align > PAGE_SIZE)
     return -1;

    page = vmalloc_to_page((void *)addr);
    return PFN_PHYS(page_to_pfn(page));
   } else
    return addr;
  }
 }
 return -1;
}
