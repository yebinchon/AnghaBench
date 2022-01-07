
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int swp_entry_t ;
struct vm_area_struct {int dummy; } ;
struct swap_info_struct {int dummy; } ;
struct page {int dummy; } ;
typedef int gfp_t ;


 int EEXIST ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int SetPageWorkingset (struct page*) ;
 int __ClearPageLocked (struct page*) ;
 int __SetPageLocked (struct page*) ;
 int __SetPageSwapBacked (struct page*) ;
 int __swp_swapcount (int ) ;
 int add_to_swap_cache (struct page*,int ,int) ;
 struct page* alloc_page_vma (int,struct vm_area_struct*,unsigned long) ;
 int cond_resched () ;
 struct page* find_get_page (int ,int ) ;
 struct swap_info_struct* get_swap_device (int ) ;
 scalar_t__ likely (int) ;
 int lru_cache_add_anon (struct page*) ;
 int put_page (struct page*) ;
 int put_swap_device (struct swap_info_struct*) ;
 int put_swap_page (struct page*,int ) ;
 int swap_address_space (int ) ;
 scalar_t__ swap_slot_cache_enabled ;
 int swapcache_prepare (int ) ;
 int swp_offset (int ) ;

struct page *__read_swap_cache_async(swp_entry_t entry, gfp_t gfp_mask,
   struct vm_area_struct *vma, unsigned long addr,
   bool *new_page_allocated)
{
 struct page *found_page = ((void*)0), *new_page = ((void*)0);
 struct swap_info_struct *si;
 int err;
 *new_page_allocated = 0;

 do {





  si = get_swap_device(entry);
  if (!si)
   break;
  found_page = find_get_page(swap_address_space(entry),
        swp_offset(entry));
  put_swap_device(si);
  if (found_page)
   break;
  if (!__swp_swapcount(entry) && swap_slot_cache_enabled)
   break;




  if (!new_page) {
   new_page = alloc_page_vma(gfp_mask, vma, addr);
   if (!new_page)
    break;
  }




  err = swapcache_prepare(entry);
  if (err == -EEXIST) {





   cond_resched();
   continue;
  } else if (err)
   break;


  __SetPageLocked(new_page);
  __SetPageSwapBacked(new_page);
  err = add_to_swap_cache(new_page, entry, gfp_mask & GFP_KERNEL);
  if (likely(!err)) {

   SetPageWorkingset(new_page);
   lru_cache_add_anon(new_page);
   *new_page_allocated = 1;
   return new_page;
  }
  __ClearPageLocked(new_page);




  put_swap_page(new_page, entry);
 } while (err != -ENOMEM);

 if (new_page)
  put_page(new_page);
 return found_page;
}
