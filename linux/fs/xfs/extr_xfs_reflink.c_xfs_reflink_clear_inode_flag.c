
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xfs_trans {int dummy; } ;
struct TYPE_2__ {int di_flags2; } ;
struct xfs_inode {TYPE_1__ i_d; } ;


 int ASSERT (int ) ;
 int NULLFILEOFF ;
 int XFS_DIFLAG2_REFLINK ;
 int XFS_ILOG_CORE ;
 int trace_xfs_reflink_unset_inode_flag (struct xfs_inode*) ;
 int xfs_inode_clear_cowblocks_tag (struct xfs_inode*) ;
 int xfs_is_reflink_inode (struct xfs_inode*) ;
 int xfs_reflink_cancel_cow_blocks (struct xfs_inode*,struct xfs_trans**,int ,int ,int) ;
 int xfs_reflink_inode_has_shared_extents (struct xfs_trans*,struct xfs_inode*,int*) ;
 int xfs_trans_log_inode (struct xfs_trans*,struct xfs_inode*,int ) ;

int
xfs_reflink_clear_inode_flag(
 struct xfs_inode *ip,
 struct xfs_trans **tpp)
{
 bool needs_flag;
 int error = 0;

 ASSERT(xfs_is_reflink_inode(ip));

 error = xfs_reflink_inode_has_shared_extents(*tpp, ip, &needs_flag);
 if (error || needs_flag)
  return error;





 error = xfs_reflink_cancel_cow_blocks(ip, tpp, 0, NULLFILEOFF, 1);
 if (error)
  return error;


 trace_xfs_reflink_unset_inode_flag(ip);
 ip->i_d.di_flags2 &= ~XFS_DIFLAG2_REFLINK;
 xfs_inode_clear_cowblocks_tag(ip);
 xfs_trans_log_inode(*tpp, ip, XFS_ILOG_CORE);

 return error;
}
