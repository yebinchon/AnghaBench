
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int swp_entry_t ;
struct swap_info_struct {int dummy; } ;


 int scan_swap_map_slots (struct swap_info_struct*,unsigned char,int,int *) ;
 unsigned long swp_offset (int ) ;

__attribute__((used)) static unsigned long scan_swap_map(struct swap_info_struct *si,
       unsigned char usage)
{
 swp_entry_t entry;
 int n_ret;

 n_ret = scan_swap_map_slots(si, usage, 1, &entry);

 if (n_ret)
  return swp_offset(entry);
 else
  return 0;

}
