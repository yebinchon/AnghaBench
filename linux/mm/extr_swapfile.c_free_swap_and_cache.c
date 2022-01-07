
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int swp_entry_t ;
struct swap_info_struct {int dummy; } ;


 unsigned char SWAP_HAS_CACHE ;
 int TTRS_FULL ;
 int TTRS_UNMAPPED ;
 unsigned char __swap_entry_free (struct swap_info_struct*,int ,int) ;
 int __try_to_reclaim_swap (struct swap_info_struct*,int ,int) ;
 struct swap_info_struct* _swap_info_get (int ) ;
 scalar_t__ non_swap_entry (int ) ;
 int swap_page_trans_huge_swapped (struct swap_info_struct*,int ) ;
 int swp_offset (int ) ;

int free_swap_and_cache(swp_entry_t entry)
{
 struct swap_info_struct *p;
 unsigned char count;

 if (non_swap_entry(entry))
  return 1;

 p = _swap_info_get(entry);
 if (p) {
  count = __swap_entry_free(p, entry, 1);
  if (count == SWAP_HAS_CACHE &&
      !swap_page_trans_huge_swapped(p, entry))
   __try_to_reclaim_swap(p, swp_offset(entry),
           TTRS_UNMAPPED | TTRS_FULL);
 }
 return p != ((void*)0);
}
