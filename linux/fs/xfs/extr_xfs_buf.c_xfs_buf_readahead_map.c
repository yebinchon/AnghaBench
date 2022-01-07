
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xfs_buftarg {TYPE_1__* bt_bdev; } ;
struct xfs_buf_ops {int dummy; } ;
struct xfs_buf_map {int dummy; } ;
struct TYPE_2__ {int bd_bdi; } ;


 int XBF_ASYNC ;
 int XBF_READ_AHEAD ;
 int XBF_TRYLOCK ;
 scalar_t__ bdi_read_congested (int ) ;
 int xfs_buf_read_map (struct xfs_buftarg*,struct xfs_buf_map*,int,int,struct xfs_buf_ops const*) ;

void
xfs_buf_readahead_map(
 struct xfs_buftarg *target,
 struct xfs_buf_map *map,
 int nmaps,
 const struct xfs_buf_ops *ops)
{
 if (bdi_read_congested(target->bt_bdev->bd_bdi))
  return;

 xfs_buf_read_map(target, map, nmaps,
       XBF_TRYLOCK|XBF_ASYNC|XBF_READ_AHEAD, ops);
}
