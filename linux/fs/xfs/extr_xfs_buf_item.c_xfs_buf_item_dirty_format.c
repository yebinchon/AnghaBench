
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xfs_buf_log_item {int bli_format_count; TYPE_1__* bli_formats; } ;
struct TYPE_2__ {int blf_map_size; int blf_data_map; } ;


 int xfs_bitmap_empty (int ,int ) ;

bool
xfs_buf_item_dirty_format(
 struct xfs_buf_log_item *bip)
{
 int i;

 for (i = 0; i < bip->bli_format_count; i++) {
  if (!xfs_bitmap_empty(bip->bli_formats[i].blf_data_map,
        bip->bli_formats[i].blf_map_size))
   return 1;
 }

 return 0;
}
