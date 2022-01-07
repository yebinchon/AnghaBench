
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int swp_entry_t ;
struct vm_area_struct {int dummy; } ;
struct page {int dummy; } ;
typedef int gfp_t ;


 struct page* __read_swap_cache_async (int ,int ,struct vm_area_struct*,unsigned long,int*) ;
 int swap_readpage (struct page*,int) ;

struct page *read_swap_cache_async(swp_entry_t entry, gfp_t gfp_mask,
  struct vm_area_struct *vma, unsigned long addr, bool do_poll)
{
 bool page_was_allocated;
 struct page *retpage = __read_swap_cache_async(entry, gfp_mask,
   vma, addr, &page_was_allocated);

 if (page_was_allocated)
  swap_readpage(retpage, do_poll);

 return retpage;
}
