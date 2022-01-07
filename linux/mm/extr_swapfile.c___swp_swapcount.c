
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int swp_entry_t ;
struct swap_info_struct {int dummy; } ;


 struct swap_info_struct* get_swap_device (int ) ;
 int put_swap_device (struct swap_info_struct*) ;
 int swap_swapcount (struct swap_info_struct*,int ) ;

int __swp_swapcount(swp_entry_t entry)
{
 int count = 0;
 struct swap_info_struct *si;

 si = get_swap_device(entry);
 if (si) {
  count = swap_swapcount(si, entry);
  put_swap_device(si);
 }
 return count;
}
