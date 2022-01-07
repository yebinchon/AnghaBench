
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_7__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int xfs_trans_t ;
typedef int xfs_mount_t ;
struct TYPE_8__ {int di_dmstate; int di_dmevmask; } ;
struct TYPE_9__ {TYPE_1__ i_d; int * i_mount; } ;
typedef TYPE_2__ xfs_inode_t ;
typedef int uint16_t ;
typedef int uint ;
struct TYPE_10__ {int tr_ichange; } ;


 int CAP_SYS_ADMIN ;
 int EIO ;
 int EPERM ;
 TYPE_7__* M_RES (int *) ;
 scalar_t__ XFS_FORCED_SHUTDOWN (int *) ;
 int XFS_ILOCK_EXCL ;
 int XFS_ILOG_CORE ;
 int capable (int ) ;
 int xfs_ilock (TYPE_2__*,int ) ;
 int xfs_trans_alloc (int *,int *,int ,int ,int ,int **) ;
 int xfs_trans_commit (int *) ;
 int xfs_trans_ijoin (int *,TYPE_2__*,int ) ;
 int xfs_trans_log_inode (int *,TYPE_2__*,int ) ;

int
xfs_set_dmattrs(
 xfs_inode_t *ip,
 uint evmask,
 uint16_t state)
{
 xfs_mount_t *mp = ip->i_mount;
 xfs_trans_t *tp;
 int error;

 if (!capable(CAP_SYS_ADMIN))
  return -EPERM;

 if (XFS_FORCED_SHUTDOWN(mp))
  return -EIO;

 error = xfs_trans_alloc(mp, &M_RES(mp)->tr_ichange, 0, 0, 0, &tp);
 if (error)
  return error;

 xfs_ilock(ip, XFS_ILOCK_EXCL);
 xfs_trans_ijoin(tp, ip, XFS_ILOCK_EXCL);

 ip->i_d.di_dmevmask = evmask;
 ip->i_d.di_dmstate = state;

 xfs_trans_log_inode(tp, ip, XFS_ILOG_CORE);
 error = xfs_trans_commit(tp);

 return error;
}
