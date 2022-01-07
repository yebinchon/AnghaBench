
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct xfs_mount {TYPE_2__* m_ddev_targp; TYPE_1__* m_rtdev_targp; } ;
struct xfs_inode {struct xfs_mount* i_mount; } ;
struct inode {int dummy; } ;
struct dax_device {int dummy; } ;
struct TYPE_4__ {struct dax_device* bt_daxdev; } ;
struct TYPE_3__ {struct dax_device* bt_daxdev; } ;


 struct xfs_inode* XFS_I (struct inode*) ;
 scalar_t__ XFS_IS_REALTIME_INODE (struct xfs_inode*) ;

struct dax_device *
xfs_find_daxdev_for_inode(
 struct inode *inode)
{
 struct xfs_inode *ip = XFS_I(inode);
 struct xfs_mount *mp = ip->i_mount;

 if (XFS_IS_REALTIME_INODE(ip))
  return mp->m_rtdev_targp->bt_daxdev;
 else
  return mp->m_ddev_targp->bt_daxdev;
}
