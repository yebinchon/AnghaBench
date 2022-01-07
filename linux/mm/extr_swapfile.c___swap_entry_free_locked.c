
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct swap_info_struct {unsigned char* swap_map; } ;


 unsigned char COUNT_CONTINUED ;
 unsigned char SWAP_HAS_CACHE ;
 unsigned char SWAP_MAP_MAX ;
 unsigned char SWAP_MAP_SHMEM ;
 int VM_BUG_ON (int) ;
 scalar_t__ swap_count_continued (struct swap_info_struct*,unsigned long,unsigned char) ;

__attribute__((used)) static unsigned char __swap_entry_free_locked(struct swap_info_struct *p,
           unsigned long offset,
           unsigned char usage)
{
 unsigned char count;
 unsigned char has_cache;

 count = p->swap_map[offset];

 has_cache = count & SWAP_HAS_CACHE;
 count &= ~SWAP_HAS_CACHE;

 if (usage == SWAP_HAS_CACHE) {
  VM_BUG_ON(!has_cache);
  has_cache = 0;
 } else if (count == SWAP_MAP_SHMEM) {




  count = 0;
 } else if ((count & ~COUNT_CONTINUED) <= SWAP_MAP_MAX) {
  if (count == COUNT_CONTINUED) {
   if (swap_count_continued(p, offset, count))
    count = SWAP_MAP_MAX | COUNT_CONTINUED;
   else
    count = SWAP_MAP_MAX;
  } else
   count--;
 }

 usage = count | has_cache;
 p->swap_map[offset] = usage ? : SWAP_HAS_CACHE;

 return usage;
}
