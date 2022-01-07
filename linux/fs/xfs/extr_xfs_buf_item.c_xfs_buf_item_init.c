
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct xfs_mount {int dummy; } ;
struct TYPE_6__ {scalar_t__ li_type; } ;
struct xfs_buf_log_item {int bli_format_count; TYPE_2__* bli_formats; struct xfs_buf* bli_buf; TYPE_3__ bli_item; } ;
struct xfs_buf {struct xfs_buf_log_item* b_log_item; TYPE_1__* b_maps; int b_map_count; int b_transp; struct xfs_mount* b_mount; } ;
struct TYPE_5__ {int blf_map_size; int blf_len; int blf_blkno; scalar_t__ blf_type; } ;
struct TYPE_4__ {int bm_len; int bm_bn; } ;


 int ASSERT (int) ;
 int BBTOB (int ) ;
 int DIV_ROUND_UP (int,int ) ;
 int NBWORD ;
 int XFS_BLF_CHUNK ;
 scalar_t__ XFS_LI_BUF ;
 int kmem_zone_free (int ,struct xfs_buf_log_item*) ;
 struct xfs_buf_log_item* kmem_zone_zalloc (int ,int ) ;
 int xfs_buf_hold (struct xfs_buf*) ;
 int xfs_buf_item_get_format (struct xfs_buf_log_item*,int ) ;
 int xfs_buf_item_ops ;
 int xfs_buf_item_zone ;
 int xfs_log_item_init (struct xfs_mount*,TYPE_3__*,scalar_t__,int *) ;

int
xfs_buf_item_init(
 struct xfs_buf *bp,
 struct xfs_mount *mp)
{
 struct xfs_buf_log_item *bip = bp->b_log_item;
 int chunks;
 int map_size;
 int error;
 int i;






 ASSERT(bp->b_mount == mp);
 if (bip) {
  ASSERT(bip->bli_item.li_type == XFS_LI_BUF);
  ASSERT(!bp->b_transp);
  ASSERT(bip->bli_buf == bp);
  return 0;
 }

 bip = kmem_zone_zalloc(xfs_buf_item_zone, 0);
 xfs_log_item_init(mp, &bip->bli_item, XFS_LI_BUF, &xfs_buf_item_ops);
 bip->bli_buf = bp;
 error = xfs_buf_item_get_format(bip, bp->b_map_count);
 ASSERT(error == 0);
 if (error) {
  kmem_zone_free(xfs_buf_item_zone, bip);
  return error;
 }


 for (i = 0; i < bip->bli_format_count; i++) {
  chunks = DIV_ROUND_UP(BBTOB(bp->b_maps[i].bm_len),
          XFS_BLF_CHUNK);
  map_size = DIV_ROUND_UP(chunks, NBWORD);

  bip->bli_formats[i].blf_type = XFS_LI_BUF;
  bip->bli_formats[i].blf_blkno = bp->b_maps[i].bm_bn;
  bip->bli_formats[i].blf_len = bp->b_maps[i].bm_len;
  bip->bli_formats[i].blf_map_size = map_size;
 }

 bp->b_log_item = bip;
 xfs_buf_hold(bp);
 return 0;
}
