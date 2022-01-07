
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int swp_entry_t ;
struct swap_info_struct {struct block_device* bdev; } ;
struct swap_extent {scalar_t__ start_page; scalar_t__ start_block; } ;
struct block_device {int dummy; } ;
typedef scalar_t__ sector_t ;
typedef scalar_t__ pgoff_t ;


 struct swap_extent* offset_to_swap_extent (struct swap_info_struct*,scalar_t__) ;
 scalar_t__ swp_offset (int ) ;
 struct swap_info_struct* swp_swap_info (int ) ;

__attribute__((used)) static sector_t map_swap_entry(swp_entry_t entry, struct block_device **bdev)
{
 struct swap_info_struct *sis;
 struct swap_extent *se;
 pgoff_t offset;

 sis = swp_swap_info(entry);
 *bdev = sis->bdev;

 offset = swp_offset(entry);
 se = offset_to_swap_extent(sis, offset);
 return se->start_block + (offset - se->start_page);
}
