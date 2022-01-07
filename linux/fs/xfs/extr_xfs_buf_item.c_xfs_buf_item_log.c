
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint ;
struct xfs_buf_log_item {int bli_format_count; TYPE_1__* bli_formats; struct xfs_buf* bli_buf; } ;
struct xfs_buf {TYPE_2__* b_maps; } ;
struct TYPE_4__ {int bm_len; } ;
struct TYPE_3__ {int * blf_data_map; } ;


 scalar_t__ BBTOB (int ) ;
 int xfs_buf_item_log_segment (scalar_t__,scalar_t__,int *) ;

void
xfs_buf_item_log(
 struct xfs_buf_log_item *bip,
 uint first,
 uint last)
{
 int i;
 uint start;
 uint end;
 struct xfs_buf *bp = bip->bli_buf;




 start = 0;
 for (i = 0; i < bip->bli_format_count; i++) {
  if (start > last)
   break;
  end = start + BBTOB(bp->b_maps[i].bm_len) - 1;


  if (first > end) {
   start += BBTOB(bp->b_maps[i].bm_len);
   continue;
  }







  if (first < start)
   first = start;
  if (end > last)
   end = last;
  xfs_buf_item_log_segment(first - start, end - start,
      &bip->bli_formats[i].blf_data_map[0]);

  start += BBTOB(bp->b_maps[i].bm_len);
 }
}
