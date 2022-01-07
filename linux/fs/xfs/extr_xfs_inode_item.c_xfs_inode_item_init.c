
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xfs_mount {int dummy; } ;
struct xfs_inode_log_item {int ili_item; struct xfs_inode* ili_inode; } ;
struct xfs_inode {struct xfs_inode_log_item* i_itemp; } ;


 int ASSERT (int ) ;
 int XFS_LI_INODE ;
 struct xfs_inode_log_item* kmem_zone_zalloc (int ,int ) ;
 int xfs_ili_zone ;
 int xfs_inode_item_ops ;
 int xfs_log_item_init (struct xfs_mount*,int *,int ,int *) ;

void
xfs_inode_item_init(
 struct xfs_inode *ip,
 struct xfs_mount *mp)
{
 struct xfs_inode_log_item *iip;

 ASSERT(ip->i_itemp == ((void*)0));
 iip = ip->i_itemp = kmem_zone_zalloc(xfs_ili_zone, 0);

 iip->ili_inode = ip;
 xfs_log_item_init(mp, &iip->ili_item, XFS_LI_INODE,
      &xfs_inode_item_ops);
}
