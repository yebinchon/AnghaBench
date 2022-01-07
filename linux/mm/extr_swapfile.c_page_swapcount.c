
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int val; } ;
typedef TYPE_1__ swp_entry_t ;
struct swap_info_struct {int * swap_map; } ;
struct swap_cluster_info {int dummy; } ;
struct page {int dummy; } ;


 struct swap_info_struct* _swap_info_get (TYPE_1__) ;
 struct swap_cluster_info* lock_cluster_or_swap_info (struct swap_info_struct*,unsigned long) ;
 int page_private (struct page*) ;
 int swap_count (int ) ;
 unsigned long swp_offset (TYPE_1__) ;
 int unlock_cluster_or_swap_info (struct swap_info_struct*,struct swap_cluster_info*) ;

int page_swapcount(struct page *page)
{
 int count = 0;
 struct swap_info_struct *p;
 struct swap_cluster_info *ci;
 swp_entry_t entry;
 unsigned long offset;

 entry.val = page_private(page);
 p = _swap_info_get(entry);
 if (p) {
  offset = swp_offset(entry);
  ci = lock_cluster_or_swap_info(p, offset);
  count = swap_count(p->swap_map[offset]);
  unlock_cluster_or_swap_info(p, ci);
 }
 return count;
}
