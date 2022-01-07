
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ ili_lock_flags; int ili_item; } ;
typedef TYPE_1__ xfs_inode_log_item_t ;
typedef scalar_t__ uint ;
struct xfs_trans {int dummy; } ;
struct xfs_inode {TYPE_1__* i_itemp; int i_mount; } ;


 int ASSERT (int) ;
 int XFS_ILOCK_EXCL ;
 int xfs_inode_item_init (struct xfs_inode*,int ) ;
 int xfs_isilocked (struct xfs_inode*,int ) ;
 int xfs_trans_add_item (struct xfs_trans*,int *) ;

void
xfs_trans_ijoin(
 struct xfs_trans *tp,
 struct xfs_inode *ip,
 uint lock_flags)
{
 xfs_inode_log_item_t *iip;

 ASSERT(xfs_isilocked(ip, XFS_ILOCK_EXCL));
 if (ip->i_itemp == ((void*)0))
  xfs_inode_item_init(ip, ip->i_mount);
 iip = ip->i_itemp;

 ASSERT(iip->ili_lock_flags == 0);
 iip->ili_lock_flags = lock_flags;




 xfs_trans_add_item(tp, &iip->ili_item);
}
