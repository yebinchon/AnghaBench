
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct xfs_trans {int dummy; } ;
struct xfs_mount {int dummy; } ;
struct xfs_inode {struct xfs_mount* i_mount; } ;
struct inode {int i_state; TYPE_1__* i_sb; } ;
struct TYPE_4__ {int tr_fsyncts; } ;
struct TYPE_3__ {int s_flags; } ;


 int I_DIRTY_SYNC ;
 int I_DIRTY_TIME ;
 TYPE_2__* M_RES (struct xfs_mount*) ;
 int SB_LAZYTIME ;
 struct xfs_inode* XFS_I (struct inode*) ;
 int XFS_ILOCK_EXCL ;
 int XFS_ILOG_TIMESTAMP ;
 int xfs_ilock (struct xfs_inode*,int ) ;
 scalar_t__ xfs_trans_alloc (struct xfs_mount*,int *,int ,int ,int ,struct xfs_trans**) ;
 int xfs_trans_commit (struct xfs_trans*) ;
 int xfs_trans_ijoin (struct xfs_trans*,struct xfs_inode*,int ) ;
 int xfs_trans_log_inode (struct xfs_trans*,struct xfs_inode*,int ) ;

__attribute__((used)) static void
xfs_fs_dirty_inode(
 struct inode *inode,
 int flag)
{
 struct xfs_inode *ip = XFS_I(inode);
 struct xfs_mount *mp = ip->i_mount;
 struct xfs_trans *tp;

 if (!(inode->i_sb->s_flags & SB_LAZYTIME))
  return;
 if (flag != I_DIRTY_SYNC || !(inode->i_state & I_DIRTY_TIME))
  return;

 if (xfs_trans_alloc(mp, &M_RES(mp)->tr_fsyncts, 0, 0, 0, &tp))
  return;
 xfs_ilock(ip, XFS_ILOCK_EXCL);
 xfs_trans_ijoin(tp, ip, XFS_ILOCK_EXCL);
 xfs_trans_log_inode(tp, ip, XFS_ILOG_TIMESTAMP);
 xfs_trans_commit(tp);
}
