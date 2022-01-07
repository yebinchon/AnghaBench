
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int swp_entry_t ;
struct swap_info_struct {int dummy; } ;
struct address_space {scalar_t__ nrpages; } ;


 unsigned int MAX_SWAPFILES ;
 struct swap_info_struct* get_swap_device (int ) ;
 unsigned int* nr_swapper_spaces ;
 int put_swap_device (struct swap_info_struct*) ;
 struct address_space** swapper_spaces ;
 int swp_entry (unsigned int,int) ;
 int swp_swap_info (int ) ;

unsigned long total_swapcache_pages(void)
{
 unsigned int i, j, nr;
 unsigned long ret = 0;
 struct address_space *spaces;
 struct swap_info_struct *si;

 for (i = 0; i < MAX_SWAPFILES; i++) {
  swp_entry_t entry = swp_entry(i, 1);


  if (!swp_swap_info(entry))
   continue;

  si = get_swap_device(entry);
  if (!si)
   continue;
  nr = nr_swapper_spaces[i];
  spaces = swapper_spaces[i];
  for (j = 0; j < nr; j++)
   ret += spaces[j].nrpages;
  put_swap_device(si);
 }
 return ret;
}
