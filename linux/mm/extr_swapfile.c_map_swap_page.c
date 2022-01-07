
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int val; } ;
typedef TYPE_1__ swp_entry_t ;
struct page {int dummy; } ;
struct block_device {int dummy; } ;
typedef int sector_t ;


 int map_swap_entry (TYPE_1__,struct block_device**) ;
 int page_private (struct page*) ;

sector_t map_swap_page(struct page *page, struct block_device **bdev)
{
 swp_entry_t entry;
 entry.val = page_private(page);
 return map_swap_entry(entry, bdev);
}
