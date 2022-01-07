
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int swp_entry_t ;
struct swap_info_struct {int * swap_map; } ;
struct swap_cluster_info {int dummy; } ;
typedef size_t pgoff_t ;


 struct swap_cluster_info* lock_cluster_or_swap_info (struct swap_info_struct*,size_t) ;
 int swap_count (int ) ;
 size_t swp_offset (int ) ;
 int unlock_cluster_or_swap_info (struct swap_info_struct*,struct swap_cluster_info*) ;

__attribute__((used)) static int swap_swapcount(struct swap_info_struct *si, swp_entry_t entry)
{
 int count = 0;
 pgoff_t offset = swp_offset(entry);
 struct swap_cluster_info *ci;

 ci = lock_cluster_or_swap_info(si, offset);
 count = swap_count(si->swap_map[offset]);
 unlock_cluster_or_swap_info(si, ci);
 return count;
}
