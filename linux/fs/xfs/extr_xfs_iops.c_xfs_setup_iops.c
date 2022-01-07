
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int if_flags; } ;
struct inode {int i_mode; int i_rdev; int * i_op; int * i_fop; int i_sb; TYPE_1__* i_mapping; } ;
struct xfs_inode {TYPE_2__ i_df; struct inode i_vnode; } ;
struct TYPE_6__ {int m_sb; } ;
struct TYPE_4__ {int * a_ops; } ;


 int IS_DAX (struct inode*) ;


 int S_IFMT ;

 int XFS_IFINLINE ;
 TYPE_3__* XFS_M (int ) ;
 int init_special_inode (struct inode*,int,int ) ;
 int xfs_address_space_operations ;
 int xfs_dax_aops ;
 int xfs_dir_ci_inode_operations ;
 int xfs_dir_file_operations ;
 int xfs_dir_inode_operations ;
 int xfs_file_operations ;
 int xfs_inline_symlink_inode_operations ;
 int xfs_inode_operations ;
 int xfs_sb_version_hasasciici (int *) ;
 int xfs_symlink_inode_operations ;

void
xfs_setup_iops(
 struct xfs_inode *ip)
{
 struct inode *inode = &ip->i_vnode;

 switch (inode->i_mode & S_IFMT) {
 case 128:
  inode->i_op = &xfs_inode_operations;
  inode->i_fop = &xfs_file_operations;
  if (IS_DAX(inode))
   inode->i_mapping->a_ops = &xfs_dax_aops;
  else
   inode->i_mapping->a_ops = &xfs_address_space_operations;
  break;
 case 130:
  if (xfs_sb_version_hasasciici(&XFS_M(inode->i_sb)->m_sb))
   inode->i_op = &xfs_dir_ci_inode_operations;
  else
   inode->i_op = &xfs_dir_inode_operations;
  inode->i_fop = &xfs_dir_file_operations;
  break;
 case 129:
  if (ip->i_df.if_flags & XFS_IFINLINE)
   inode->i_op = &xfs_inline_symlink_inode_operations;
  else
   inode->i_op = &xfs_symlink_inode_operations;
  break;
 default:
  inode->i_op = &xfs_inode_operations;
  init_special_inode(inode, inode->i_mode, inode->i_rdev);
  break;
 }
}
