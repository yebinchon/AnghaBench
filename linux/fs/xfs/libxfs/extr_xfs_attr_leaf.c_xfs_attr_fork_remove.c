
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xfs_trans {int dummy; } ;
struct TYPE_2__ {scalar_t__ di_anextents; int di_aformat; scalar_t__ di_forkoff; } ;
struct xfs_inode {int * i_afp; TYPE_1__ i_d; } ;


 int ASSERT (int) ;
 int XFS_ATTR_FORK ;
 int XFS_DINODE_FMT_EXTENTS ;
 int XFS_ILOG_CORE ;
 int xfs_idestroy_fork (struct xfs_inode*,int ) ;
 int xfs_trans_log_inode (struct xfs_trans*,struct xfs_inode*,int ) ;

void
xfs_attr_fork_remove(
 struct xfs_inode *ip,
 struct xfs_trans *tp)
{
 xfs_idestroy_fork(ip, XFS_ATTR_FORK);
 ip->i_d.di_forkoff = 0;
 ip->i_d.di_aformat = XFS_DINODE_FMT_EXTENTS;

 ASSERT(ip->i_d.di_anextents == 0);
 ASSERT(ip->i_afp == ((void*)0));

 xfs_trans_log_inode(tp, ip, XFS_ILOG_CORE);
}
