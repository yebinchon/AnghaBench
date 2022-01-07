
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int swp_entry_t ;
struct swap_info_struct {int type; } ;
struct page {int dummy; } ;


 unsigned long TTRS_ANYWAY ;
 unsigned long TTRS_FULL ;
 unsigned long TTRS_UNMAPPED ;
 struct page* find_get_page (int ,unsigned long) ;
 scalar_t__ mem_cgroup_swap_full (struct page*) ;
 int page_mapped (struct page*) ;
 int put_page (struct page*) ;
 int swap_address_space (int ) ;
 int swp_entry (int ,unsigned long) ;
 int try_to_free_swap (struct page*) ;
 scalar_t__ trylock_page (struct page*) ;
 int unlock_page (struct page*) ;

__attribute__((used)) static int __try_to_reclaim_swap(struct swap_info_struct *si,
     unsigned long offset, unsigned long flags)
{
 swp_entry_t entry = swp_entry(si->type, offset);
 struct page *page;
 int ret = 0;

 page = find_get_page(swap_address_space(entry), offset);
 if (!page)
  return 0;







 if (trylock_page(page)) {
  if ((flags & TTRS_ANYWAY) ||
      ((flags & TTRS_UNMAPPED) && !page_mapped(page)) ||
      ((flags & TTRS_FULL) && mem_cgroup_swap_full(page)))
   ret = try_to_free_swap(page);
  unlock_page(page);
 }
 put_page(page);
 return ret;
}
