
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int val; } ;
typedef TYPE_2__ swp_entry_t ;
struct swap_info_struct {int flags; TYPE_4__* bdev; } ;
struct page {int dummy; } ;
struct gendisk {TYPE_1__* fops; } ;
struct TYPE_7__ {struct gendisk* bd_disk; } ;
struct TYPE_5__ {int (* swap_slot_free_notify ) (TYPE_4__*,unsigned long) ;} ;


 int PageSwapCache (struct page*) ;
 int SWP_BLKDEV ;
 int SetPageDirty (struct page*) ;
 int page_private (struct page*) ;
 struct swap_info_struct* page_swap_info (struct page*) ;
 int stub1 (TYPE_4__*,unsigned long) ;
 unsigned long swp_offset (TYPE_2__) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static void swap_slot_free_notify(struct page *page)
{
 struct swap_info_struct *sis;
 struct gendisk *disk;







 if (unlikely(!PageSwapCache(page)))
  return;

 sis = page_swap_info(page);
 if (!(sis->flags & SWP_BLKDEV))
  return;
 disk = sis->bdev->bd_disk;
 if (disk->fops->swap_slot_free_notify) {
  swp_entry_t entry;
  unsigned long offset;

  entry.val = page_private(page);
  offset = swp_offset(entry);

  SetPageDirty(page);
  disk->fops->swap_slot_free_notify(sis->bdev,
    offset);
 }
}
