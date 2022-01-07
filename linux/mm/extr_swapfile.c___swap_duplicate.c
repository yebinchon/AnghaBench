
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int swp_entry_t ;
struct swap_info_struct {unsigned char* swap_map; } ;
struct swap_cluster_info {int dummy; } ;


 unsigned char COUNT_CONTINUED ;
 int EEXIST ;
 int EINVAL ;
 int ENOENT ;
 int ENOMEM ;
 unsigned char SWAP_HAS_CACHE ;
 scalar_t__ SWAP_MAP_BAD ;
 unsigned char SWAP_MAP_MAX ;
 struct swap_info_struct* get_swap_device (int ) ;
 struct swap_cluster_info* lock_cluster_or_swap_info (struct swap_info_struct*,unsigned long) ;
 int put_swap_device (struct swap_info_struct*) ;
 scalar_t__ swap_count (unsigned char) ;
 scalar_t__ swap_count_continued (struct swap_info_struct*,unsigned long,unsigned char) ;
 unsigned long swp_offset (int ) ;
 scalar_t__ unlikely (int) ;
 int unlock_cluster_or_swap_info (struct swap_info_struct*,struct swap_cluster_info*) ;

__attribute__((used)) static int __swap_duplicate(swp_entry_t entry, unsigned char usage)
{
 struct swap_info_struct *p;
 struct swap_cluster_info *ci;
 unsigned long offset;
 unsigned char count;
 unsigned char has_cache;
 int err = -EINVAL;

 p = get_swap_device(entry);
 if (!p)
  goto out;

 offset = swp_offset(entry);
 ci = lock_cluster_or_swap_info(p, offset);

 count = p->swap_map[offset];





 if (unlikely(swap_count(count) == SWAP_MAP_BAD)) {
  err = -ENOENT;
  goto unlock_out;
 }

 has_cache = count & SWAP_HAS_CACHE;
 count &= ~SWAP_HAS_CACHE;
 err = 0;

 if (usage == SWAP_HAS_CACHE) {


  if (!has_cache && count)
   has_cache = SWAP_HAS_CACHE;
  else if (has_cache)
   err = -EEXIST;
  else
   err = -ENOENT;

 } else if (count || has_cache) {

  if ((count & ~COUNT_CONTINUED) < SWAP_MAP_MAX)
   count += usage;
  else if ((count & ~COUNT_CONTINUED) > SWAP_MAP_MAX)
   err = -EINVAL;
  else if (swap_count_continued(p, offset, count))
   count = COUNT_CONTINUED;
  else
   err = -ENOMEM;
 } else
  err = -ENOENT;

 p->swap_map[offset] = count | has_cache;

unlock_out:
 unlock_cluster_or_swap_info(p, ci);
out:
 if (p)
  put_swap_device(p);
 return err;
}
