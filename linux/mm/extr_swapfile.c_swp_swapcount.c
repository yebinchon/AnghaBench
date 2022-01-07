
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int swp_entry_t ;
struct swap_info_struct {int * swap_map; } ;
struct swap_cluster_info {int dummy; } ;
struct page {int dummy; } ;
typedef size_t pgoff_t ;


 int COUNT_CONTINUED ;
 size_t PAGE_MASK ;
 int SWAP_CONT_MAX ;
 int SWAP_MAP_MAX ;
 scalar_t__ SWP_CONTINUED ;
 int VM_BUG_ON (int) ;
 struct swap_info_struct* _swap_info_get (int ) ;
 unsigned char* kmap_atomic (struct page*) ;
 int kunmap_atomic (unsigned char*) ;
 struct page* list_next_entry (struct page*,int ) ;
 struct swap_cluster_info* lock_cluster_or_swap_info (struct swap_info_struct*,size_t) ;
 int lru ;
 scalar_t__ page_private (struct page*) ;
 int swap_count (int ) ;
 size_t swp_offset (int ) ;
 int unlock_cluster_or_swap_info (struct swap_info_struct*,struct swap_cluster_info*) ;
 struct page* vmalloc_to_page (int *) ;

int swp_swapcount(swp_entry_t entry)
{
 int count, tmp_count, n;
 struct swap_info_struct *p;
 struct swap_cluster_info *ci;
 struct page *page;
 pgoff_t offset;
 unsigned char *map;

 p = _swap_info_get(entry);
 if (!p)
  return 0;

 offset = swp_offset(entry);

 ci = lock_cluster_or_swap_info(p, offset);

 count = swap_count(p->swap_map[offset]);
 if (!(count & COUNT_CONTINUED))
  goto out;

 count &= ~COUNT_CONTINUED;
 n = SWAP_MAP_MAX + 1;

 page = vmalloc_to_page(p->swap_map + offset);
 offset &= ~PAGE_MASK;
 VM_BUG_ON(page_private(page) != SWP_CONTINUED);

 do {
  page = list_next_entry(page, lru);
  map = kmap_atomic(page);
  tmp_count = map[offset];
  kunmap_atomic(map);

  count += (tmp_count & ~COUNT_CONTINUED) * n;
  n *= (SWAP_CONT_MAX + 1);
 } while (tmp_count & COUNT_CONTINUED);
out:
 unlock_cluster_or_swap_info(p, ci);
 return count;
}
