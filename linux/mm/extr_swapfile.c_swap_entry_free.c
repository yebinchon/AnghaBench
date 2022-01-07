
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int swp_entry_t ;
struct swap_info_struct {unsigned char* swap_map; int cluster_info; } ;
struct swap_cluster_info {int dummy; } ;


 unsigned char SWAP_HAS_CACHE ;
 int VM_BUG_ON (int) ;
 int dec_cluster_info_page (struct swap_info_struct*,int ,unsigned long) ;
 struct swap_cluster_info* lock_cluster (struct swap_info_struct*,unsigned long) ;
 int mem_cgroup_uncharge_swap (int ,int) ;
 int swap_range_free (struct swap_info_struct*,unsigned long,int) ;
 unsigned long swp_offset (int ) ;
 int unlock_cluster (struct swap_cluster_info*) ;

__attribute__((used)) static void swap_entry_free(struct swap_info_struct *p, swp_entry_t entry)
{
 struct swap_cluster_info *ci;
 unsigned long offset = swp_offset(entry);
 unsigned char count;

 ci = lock_cluster(p, offset);
 count = p->swap_map[offset];
 VM_BUG_ON(count != SWAP_HAS_CACHE);
 p->swap_map[offset] = 0;
 dec_cluster_info_page(p, p->cluster_info, offset);
 unlock_cluster(ci);

 mem_cgroup_uncharge_swap(entry, 1);
 swap_range_free(p, offset, 1);
}
