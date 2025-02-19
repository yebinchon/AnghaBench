
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ xfs_off_t ;
typedef scalar_t__ xfs_extlen_t ;
struct xfs_trans {int dummy; } ;
struct xfs_mount {int dummy; } ;
struct TYPE_3__ {int di_flags2; scalar_t__ di_cowextsize; scalar_t__ di_size; } ;
struct xfs_inode {TYPE_1__ i_d; struct xfs_mount* i_mount; } ;
struct TYPE_4__ {int tr_ichange; } ;


 TYPE_2__* M_RES (struct xfs_mount*) ;
 int VFS_I (struct xfs_inode*) ;
 int XFS_DIFLAG2_COWEXTSIZE ;
 int XFS_ILOCK_EXCL ;
 int XFS_ILOG_CORE ;
 int _RET_IP_ ;
 scalar_t__ i_size_read (int ) ;
 int i_size_write (int ,scalar_t__) ;
 int trace_xfs_reflink_update_inode_size (struct xfs_inode*,scalar_t__) ;
 int trace_xfs_reflink_update_inode_size_error (struct xfs_inode*,int,int ) ;
 int xfs_ilock (struct xfs_inode*,int ) ;
 int xfs_trans_alloc (struct xfs_mount*,int *,int ,int ,int ,struct xfs_trans**) ;
 int xfs_trans_commit (struct xfs_trans*) ;
 int xfs_trans_ijoin (struct xfs_trans*,struct xfs_inode*,int ) ;
 int xfs_trans_log_inode (struct xfs_trans*,struct xfs_inode*,int ) ;

int
xfs_reflink_update_dest(
 struct xfs_inode *dest,
 xfs_off_t newlen,
 xfs_extlen_t cowextsize,
 unsigned int remap_flags)
{
 struct xfs_mount *mp = dest->i_mount;
 struct xfs_trans *tp;
 int error;

 if (newlen <= i_size_read(VFS_I(dest)) && cowextsize == 0)
  return 0;

 error = xfs_trans_alloc(mp, &M_RES(mp)->tr_ichange, 0, 0, 0, &tp);
 if (error)
  goto out_error;

 xfs_ilock(dest, XFS_ILOCK_EXCL);
 xfs_trans_ijoin(tp, dest, XFS_ILOCK_EXCL);

 if (newlen > i_size_read(VFS_I(dest))) {
  trace_xfs_reflink_update_inode_size(dest, newlen);
  i_size_write(VFS_I(dest), newlen);
  dest->i_d.di_size = newlen;
 }

 if (cowextsize) {
  dest->i_d.di_cowextsize = cowextsize;
  dest->i_d.di_flags2 |= XFS_DIFLAG2_COWEXTSIZE;
 }

 xfs_trans_log_inode(tp, dest, XFS_ILOG_CORE);

 error = xfs_trans_commit(tp);
 if (error)
  goto out_error;
 return error;

out_error:
 trace_xfs_reflink_update_inode_size_error(dest, error, _RET_IP_);
 return error;
}
