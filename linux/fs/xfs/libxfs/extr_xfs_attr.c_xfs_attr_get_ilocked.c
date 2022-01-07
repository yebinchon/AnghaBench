
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ di_aformat; } ;
struct xfs_inode {TYPE_1__ i_d; } ;
struct xfs_da_args {int dummy; } ;


 int ASSERT (int ) ;
 int ENOATTR ;
 int XFS_ATTR_FORK ;
 scalar_t__ XFS_DINODE_FMT_LOCAL ;
 int XFS_ILOCK_EXCL ;
 int XFS_ILOCK_SHARED ;
 int xfs_attr_leaf_get (struct xfs_da_args*) ;
 int xfs_attr_node_get (struct xfs_da_args*) ;
 int xfs_attr_shortform_getvalue (struct xfs_da_args*) ;
 scalar_t__ xfs_bmap_one_block (struct xfs_inode*,int ) ;
 int xfs_inode_hasattr (struct xfs_inode*) ;
 int xfs_isilocked (struct xfs_inode*,int) ;

int
xfs_attr_get_ilocked(
 struct xfs_inode *ip,
 struct xfs_da_args *args)
{
 ASSERT(xfs_isilocked(ip, XFS_ILOCK_SHARED | XFS_ILOCK_EXCL));

 if (!xfs_inode_hasattr(ip))
  return -ENOATTR;
 else if (ip->i_d.di_aformat == XFS_DINODE_FMT_LOCAL)
  return xfs_attr_shortform_getvalue(args);
 else if (xfs_bmap_one_block(ip, XFS_ATTR_FORK))
  return xfs_attr_leaf_get(args);
 else
  return xfs_attr_node_get(args);
}
