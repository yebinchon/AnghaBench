
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xfs_mount {struct xfs_buftarg* m_ddev_targp; } ;
struct xfs_buftarg {TYPE_1__* bt_bdev; } ;
struct TYPE_2__ {int bd_queue; } ;


 scalar_t__ blk_queue_nonrot (int ) ;

unsigned int
xfs_pwork_guess_datadev_parallelism(
 struct xfs_mount *mp)
{
 struct xfs_buftarg *btp = mp->m_ddev_targp;





 return blk_queue_nonrot(btp->bt_bdev->bd_queue) ? 2 : 1;
}
