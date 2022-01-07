
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int swp_entry_t ;
struct swap_info_struct {int * swap_map; } ;
typedef size_t pgoff_t ;


 struct swap_info_struct* get_swap_device (int ) ;
 int put_swap_device (struct swap_info_struct*) ;
 int swap_count (int ) ;
 size_t swp_offset (int ) ;

int __swap_count(swp_entry_t entry)
{
 struct swap_info_struct *si;
 pgoff_t offset = swp_offset(entry);
 int count = 0;

 si = get_swap_device(entry);
 if (si) {
  count = swap_count(si->swap_map[offset]);
  put_swap_device(si);
 }
 return count;
}
