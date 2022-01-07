
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_27__ TYPE_2__ ;
typedef struct TYPE_26__ TYPE_22__ ;
typedef struct TYPE_25__ TYPE_20__ ;
typedef struct TYPE_24__ TYPE_1__ ;


typedef int xfs_trans_t ;
struct TYPE_24__ {int m_flags; } ;
typedef TYPE_1__ xfs_mount_t ;
struct TYPE_27__ {int i_ino; TYPE_1__* i_mount; } ;
typedef TYPE_2__ xfs_inode_t ;
typedef scalar_t__ uint ;
struct xfs_name {int dummy; } ;
struct TYPE_26__ {int tr_remove; } ;
struct TYPE_25__ {int i_nlink; int i_mode; } ;


 int ASSERT (int) ;
 int EIO ;
 int ENOENT ;
 int ENOSPC ;
 int ENOTEMPTY ;
 TYPE_22__* M_RES (TYPE_1__*) ;
 int S_ISDIR (int ) ;
 TYPE_20__* VFS_I (TYPE_2__*) ;
 scalar_t__ XFS_FORCED_SHUTDOWN (TYPE_1__*) ;
 int XFS_ICHGTIME_CHG ;
 int XFS_ICHGTIME_MOD ;
 int XFS_ILOCK_EXCL ;
 int XFS_ILOG_CORE ;
 int XFS_MOUNT_DIRSYNC ;
 int XFS_MOUNT_WSYNC ;
 scalar_t__ XFS_REMOVE_SPACE_RES (TYPE_1__*) ;
 int trace_xfs_remove (TYPE_2__*,struct xfs_name*) ;
 int xfs_dir_isempty (TYPE_2__*) ;
 int xfs_dir_removename (int *,TYPE_2__*,struct xfs_name*,int ,scalar_t__) ;
 int xfs_droplink (int *,TYPE_2__*) ;
 int xfs_filestream_deassociate (TYPE_2__*) ;
 scalar_t__ xfs_inode_is_filestream (TYPE_2__*) ;
 int xfs_lock_two_inodes (TYPE_2__*,int ,TYPE_2__*,int ) ;
 int xfs_qm_dqattach (TYPE_2__*) ;
 int xfs_trans_alloc (TYPE_1__*,int *,scalar_t__,int ,int ,int **) ;
 int xfs_trans_cancel (int *) ;
 int xfs_trans_commit (int *) ;
 int xfs_trans_ichgtime (int *,TYPE_2__*,int) ;
 int xfs_trans_ijoin (int *,TYPE_2__*,int ) ;
 int xfs_trans_log_inode (int *,TYPE_2__*,int ) ;
 int xfs_trans_set_sync (int *) ;

int
xfs_remove(
 xfs_inode_t *dp,
 struct xfs_name *name,
 xfs_inode_t *ip)
{
 xfs_mount_t *mp = dp->i_mount;
 xfs_trans_t *tp = ((void*)0);
 int is_dir = S_ISDIR(VFS_I(ip)->i_mode);
 int error = 0;
 uint resblks;

 trace_xfs_remove(dp, name);

 if (XFS_FORCED_SHUTDOWN(mp))
  return -EIO;

 error = xfs_qm_dqattach(dp);
 if (error)
  goto std_return;

 error = xfs_qm_dqattach(ip);
 if (error)
  goto std_return;
 resblks = XFS_REMOVE_SPACE_RES(mp);
 error = xfs_trans_alloc(mp, &M_RES(mp)->tr_remove, resblks, 0, 0, &tp);
 if (error == -ENOSPC) {
  resblks = 0;
  error = xfs_trans_alloc(mp, &M_RES(mp)->tr_remove, 0, 0, 0,
    &tp);
 }
 if (error) {
  ASSERT(error != -ENOSPC);
  goto std_return;
 }

 xfs_lock_two_inodes(dp, XFS_ILOCK_EXCL, ip, XFS_ILOCK_EXCL);

 xfs_trans_ijoin(tp, dp, XFS_ILOCK_EXCL);
 xfs_trans_ijoin(tp, ip, XFS_ILOCK_EXCL);




 if (is_dir) {
  ASSERT(VFS_I(ip)->i_nlink >= 2);
  if (VFS_I(ip)->i_nlink != 2) {
   error = -ENOTEMPTY;
   goto out_trans_cancel;
  }
  if (!xfs_dir_isempty(ip)) {
   error = -ENOTEMPTY;
   goto out_trans_cancel;
  }


  error = xfs_droplink(tp, dp);
  if (error)
   goto out_trans_cancel;


  error = xfs_droplink(tp, ip);
  if (error)
   goto out_trans_cancel;
 } else {





  xfs_trans_log_inode(tp, dp, XFS_ILOG_CORE);
 }
 xfs_trans_ichgtime(tp, dp, XFS_ICHGTIME_MOD | XFS_ICHGTIME_CHG);


 error = xfs_droplink(tp, ip);
 if (error)
  goto out_trans_cancel;

 error = xfs_dir_removename(tp, dp, name, ip->i_ino, resblks);
 if (error) {
  ASSERT(error != -ENOENT);
  goto out_trans_cancel;
 }






 if (mp->m_flags & (XFS_MOUNT_WSYNC|XFS_MOUNT_DIRSYNC))
  xfs_trans_set_sync(tp);

 error = xfs_trans_commit(tp);
 if (error)
  goto std_return;

 if (is_dir && xfs_inode_is_filestream(ip))
  xfs_filestream_deassociate(ip);

 return 0;

 out_trans_cancel:
 xfs_trans_cancel(tp);
 std_return:
 return error;
}
