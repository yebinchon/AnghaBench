
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int val; } ;
typedef TYPE_1__ swp_entry_t ;
struct swap_info_struct {int dummy; } ;
struct page {int dummy; } ;


 int CONFIG_THP_SWAP ;
 int IS_ENABLED (int ) ;
 int PageTransCompound (struct page*) ;
 struct swap_info_struct* _swap_info_get (TYPE_1__) ;
 struct page* compound_head (struct page*) ;
 scalar_t__ likely (int) ;
 int page_private (struct page*) ;
 scalar_t__ page_swapcount (struct page*) ;
 int swap_page_trans_huge_swapped (struct swap_info_struct*,TYPE_1__) ;

__attribute__((used)) static bool page_swapped(struct page *page)
{
 swp_entry_t entry;
 struct swap_info_struct *si;

 if (!IS_ENABLED(CONFIG_THP_SWAP) || likely(!PageTransCompound(page)))
  return page_swapcount(page) != 0;

 page = compound_head(page);
 entry.val = page_private(page);
 si = _swap_info_get(entry);
 if (si)
  return swap_page_trans_huge_swapped(si, entry);
 return 0;
}
