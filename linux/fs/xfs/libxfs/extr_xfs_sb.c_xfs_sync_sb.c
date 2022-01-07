
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xfs_trans {int dummy; } ;
struct xfs_mount {int dummy; } ;
struct TYPE_2__ {int tr_sb; } ;


 TYPE_1__* M_RES (struct xfs_mount*) ;
 int XFS_TRANS_NO_WRITECOUNT ;
 int xfs_log_sb (struct xfs_trans*) ;
 int xfs_trans_alloc (struct xfs_mount*,int *,int ,int ,int ,struct xfs_trans**) ;
 int xfs_trans_commit (struct xfs_trans*) ;
 int xfs_trans_set_sync (struct xfs_trans*) ;

int
xfs_sync_sb(
 struct xfs_mount *mp,
 bool wait)
{
 struct xfs_trans *tp;
 int error;

 error = xfs_trans_alloc(mp, &M_RES(mp)->tr_sb, 0, 0,
   XFS_TRANS_NO_WRITECOUNT, &tp);
 if (error)
  return error;

 xfs_log_sb(tp);
 if (wait)
  xfs_trans_set_sync(tp);
 return xfs_trans_commit(tp);
}
