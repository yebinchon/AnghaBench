
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sector_t ;


 int get_swap_page_of_type (int) ;
 int swap_free (int ) ;
 int swapdev_block (int,unsigned long) ;
 int swp_entry (int,unsigned long) ;
 unsigned long swp_offset (int ) ;
 scalar_t__ swsusp_extents_insert (unsigned long) ;

sector_t alloc_swapdev_block(int swap)
{
 unsigned long offset;

 offset = swp_offset(get_swap_page_of_type(swap));
 if (offset) {
  if (swsusp_extents_insert(offset))
   swap_free(swp_entry(swap, offset));
  else
   return swapdev_block(swap, offset);
 }
 return 0;
}
