
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct xfs_trans {int dummy; } ;
struct TYPE_4__ {scalar_t__ di_nextents; scalar_t__ di_anextents; scalar_t__ di_size; scalar_t__ di_nblocks; void* di_aformat; void* di_format; scalar_t__ di_forkoff; scalar_t__ di_dmevmask; scalar_t__ di_flags2; scalar_t__ di_flags; } ;
struct xfs_inode {TYPE_2__* i_itemp; TYPE_1__ i_d; int i_ino; } ;
struct xfs_icluster {scalar_t__ deleted; int member_0; } ;
struct TYPE_6__ {scalar_t__ i_nlink; int i_generation; scalar_t__ i_mode; } ;
struct TYPE_5__ {int ili_fields; } ;


 int ASSERT (int) ;
 int S_ISREG (scalar_t__) ;
 TYPE_3__* VFS_I (struct xfs_inode*) ;
 int XFS_ATTR_FORK ;
 int XFS_DATA_FORK ;
 void* XFS_DINODE_FMT_EXTENTS ;
 int XFS_ILOCK_EXCL ;
 int XFS_ILOG_AOWNER ;
 int XFS_ILOG_CORE ;
 int XFS_ILOG_DOWNER ;
 int xfs_difree (struct xfs_trans*,int ,struct xfs_icluster*) ;
 int xfs_ifree_cluster (struct xfs_inode*,struct xfs_trans*,struct xfs_icluster*) ;
 int xfs_ifree_local_data (struct xfs_inode*,int ) ;
 int xfs_isilocked (struct xfs_inode*,int ) ;
 int xfs_iunlink_remove (struct xfs_trans*,struct xfs_inode*) ;
 int xfs_trans_log_inode (struct xfs_trans*,struct xfs_inode*,int ) ;

int
xfs_ifree(
 struct xfs_trans *tp,
 struct xfs_inode *ip)
{
 int error;
 struct xfs_icluster xic = { 0 };

 ASSERT(xfs_isilocked(ip, XFS_ILOCK_EXCL));
 ASSERT(VFS_I(ip)->i_nlink == 0);
 ASSERT(ip->i_d.di_nextents == 0);
 ASSERT(ip->i_d.di_anextents == 0);
 ASSERT(ip->i_d.di_size == 0 || !S_ISREG(VFS_I(ip)->i_mode));
 ASSERT(ip->i_d.di_nblocks == 0);




 error = xfs_iunlink_remove(tp, ip);
 if (error)
  return error;

 error = xfs_difree(tp, ip->i_ino, &xic);
 if (error)
  return error;

 xfs_ifree_local_data(ip, XFS_DATA_FORK);
 xfs_ifree_local_data(ip, XFS_ATTR_FORK);

 VFS_I(ip)->i_mode = 0;
 ip->i_d.di_flags = 0;
 ip->i_d.di_flags2 = 0;
 ip->i_d.di_dmevmask = 0;
 ip->i_d.di_forkoff = 0;
 ip->i_d.di_format = XFS_DINODE_FMT_EXTENTS;
 ip->i_d.di_aformat = XFS_DINODE_FMT_EXTENTS;


 ip->i_itemp->ili_fields &= ~(XFS_ILOG_AOWNER|XFS_ILOG_DOWNER);





 VFS_I(ip)->i_generation++;
 xfs_trans_log_inode(tp, ip, XFS_ILOG_CORE);

 if (xic.deleted)
  error = xfs_ifree_cluster(ip, tp, &xic);

 return error;
}
