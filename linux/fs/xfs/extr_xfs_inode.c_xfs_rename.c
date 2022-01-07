
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct xfs_trans {int dummy; } ;
struct xfs_name {int len; int type; } ;
struct xfs_mount {int dummy; } ;
struct TYPE_4__ {int di_flags; } ;
struct xfs_inode {int i_ino; TYPE_1__ i_d; struct xfs_mount* i_mount; } ;
struct TYPE_6__ {int tr_rename; } ;
struct TYPE_5__ {int i_nlink; int i_state; int i_mode; } ;


 int ASSERT (int) ;
 int EEXIST ;
 int EINVAL ;
 int ENOSPC ;
 int EXDEV ;
 int I_LINKABLE ;
 TYPE_3__* M_RES (struct xfs_mount*) ;
 unsigned int RENAME_EXCHANGE ;
 unsigned int RENAME_NOREPLACE ;
 unsigned int RENAME_WHITEOUT ;
 int S_ISDIR (int ) ;
 TYPE_2__* VFS_I (struct xfs_inode*) ;
 int XFS_DIFLAG_PROJINHERIT ;
 int XFS_DIR3_FT_CHRDEV ;
 int XFS_ICHGTIME_CHG ;
 int XFS_ICHGTIME_MOD ;
 int XFS_ILOCK_EXCL ;
 int XFS_ILOG_CORE ;
 int XFS_RENAME_SPACE_RES (struct xfs_mount*,int ) ;
 int __XFS_SORT_INODES ;
 int trace_xfs_rename (struct xfs_inode*,struct xfs_inode*,struct xfs_name*,struct xfs_name*) ;
 scalar_t__ unlikely (int) ;
 int xfs_bumplink (struct xfs_trans*,struct xfs_inode*) ;
 int xfs_cross_rename (struct xfs_trans*,struct xfs_inode*,struct xfs_name*,struct xfs_inode*,struct xfs_inode*,struct xfs_name*,struct xfs_inode*,int) ;
 int xfs_dir_canenter (struct xfs_trans*,struct xfs_inode*,struct xfs_name*) ;
 int xfs_dir_createname (struct xfs_trans*,struct xfs_inode*,struct xfs_name*,int ,int) ;
 int xfs_dir_isempty (struct xfs_inode*) ;
 int xfs_dir_removename (struct xfs_trans*,struct xfs_inode*,struct xfs_name*,int ,int) ;
 int xfs_dir_replace (struct xfs_trans*,struct xfs_inode*,struct xfs_name*,int ,int) ;
 int xfs_droplink (struct xfs_trans*,struct xfs_inode*) ;
 int xfs_finish_rename (struct xfs_trans*) ;
 scalar_t__ xfs_get_projid (struct xfs_inode*) ;
 int xfs_irele (struct xfs_inode*) ;
 int xfs_iunlink_remove (struct xfs_trans*,struct xfs_inode*) ;
 int xfs_lock_inodes (struct xfs_inode**,int,int ) ;
 struct xfs_name xfs_name_dotdot ;
 int xfs_qm_vop_rename_dqattach (struct xfs_inode**) ;
 int xfs_rename_alloc_whiteout (struct xfs_inode*,struct xfs_inode**) ;
 int xfs_sort_for_rename (struct xfs_inode*,struct xfs_inode*,struct xfs_inode*,struct xfs_inode*,struct xfs_inode*,struct xfs_inode**,int*) ;
 int xfs_trans_alloc (struct xfs_mount*,int *,int,int ,int ,struct xfs_trans**) ;
 int xfs_trans_cancel (struct xfs_trans*) ;
 int xfs_trans_ichgtime (struct xfs_trans*,struct xfs_inode*,int) ;
 int xfs_trans_ijoin (struct xfs_trans*,struct xfs_inode*,int ) ;
 int xfs_trans_log_inode (struct xfs_trans*,struct xfs_inode*,int ) ;

int
xfs_rename(
 struct xfs_inode *src_dp,
 struct xfs_name *src_name,
 struct xfs_inode *src_ip,
 struct xfs_inode *target_dp,
 struct xfs_name *target_name,
 struct xfs_inode *target_ip,
 unsigned int flags)
{
 struct xfs_mount *mp = src_dp->i_mount;
 struct xfs_trans *tp;
 struct xfs_inode *wip = ((void*)0);
 struct xfs_inode *inodes[__XFS_SORT_INODES];
 int num_inodes = __XFS_SORT_INODES;
 bool new_parent = (src_dp != target_dp);
 bool src_is_directory = S_ISDIR(VFS_I(src_ip)->i_mode);
 int spaceres;
 int error;

 trace_xfs_rename(src_dp, target_dp, src_name, target_name);

 if ((flags & RENAME_EXCHANGE) && !target_ip)
  return -EINVAL;






 if (flags & RENAME_WHITEOUT) {
  ASSERT(!(flags & (RENAME_NOREPLACE | RENAME_EXCHANGE)));
  error = xfs_rename_alloc_whiteout(target_dp, &wip);
  if (error)
   return error;


  src_name->type = XFS_DIR3_FT_CHRDEV;
 }

 xfs_sort_for_rename(src_dp, target_dp, src_ip, target_ip, wip,
    inodes, &num_inodes);

 spaceres = XFS_RENAME_SPACE_RES(mp, target_name->len);
 error = xfs_trans_alloc(mp, &M_RES(mp)->tr_rename, spaceres, 0, 0, &tp);
 if (error == -ENOSPC) {
  spaceres = 0;
  error = xfs_trans_alloc(mp, &M_RES(mp)->tr_rename, 0, 0, 0,
    &tp);
 }
 if (error)
  goto out_release_wip;




 error = xfs_qm_vop_rename_dqattach(inodes);
 if (error)
  goto out_trans_cancel;







 xfs_lock_inodes(inodes, num_inodes, XFS_ILOCK_EXCL);






 xfs_trans_ijoin(tp, src_dp, XFS_ILOCK_EXCL);
 if (new_parent)
  xfs_trans_ijoin(tp, target_dp, XFS_ILOCK_EXCL);
 xfs_trans_ijoin(tp, src_ip, XFS_ILOCK_EXCL);
 if (target_ip)
  xfs_trans_ijoin(tp, target_ip, XFS_ILOCK_EXCL);
 if (wip)
  xfs_trans_ijoin(tp, wip, XFS_ILOCK_EXCL);






 if (unlikely((target_dp->i_d.di_flags & XFS_DIFLAG_PROJINHERIT) &&
       (xfs_get_projid(target_dp) != xfs_get_projid(src_ip)))) {
  error = -EXDEV;
  goto out_trans_cancel;
 }


 if (flags & RENAME_EXCHANGE)
  return xfs_cross_rename(tp, src_dp, src_name, src_ip,
     target_dp, target_name, target_ip,
     spaceres);





 if (target_ip == ((void*)0)) {




  if (!spaceres) {
   error = xfs_dir_canenter(tp, target_dp, target_name);
   if (error)
    goto out_trans_cancel;
  }
 } else {




  if (S_ISDIR(VFS_I(target_ip)->i_mode) &&
      (!xfs_dir_isempty(target_ip) ||
       (VFS_I(target_ip)->i_nlink > 2))) {
   error = -EEXIST;
   goto out_trans_cancel;
  }
 }
 if (wip) {
  ASSERT(VFS_I(wip)->i_nlink == 0);
  error = xfs_iunlink_remove(tp, wip);
  if (error)
   goto out_trans_cancel;

  xfs_bumplink(tp, wip);
  xfs_trans_log_inode(tp, wip, XFS_ILOG_CORE);
  VFS_I(wip)->i_state &= ~I_LINKABLE;
 }




 if (target_ip == ((void*)0)) {





  error = xfs_dir_createname(tp, target_dp, target_name,
        src_ip->i_ino, spaceres);
  if (error)
   goto out_trans_cancel;

  xfs_trans_ichgtime(tp, target_dp,
     XFS_ICHGTIME_MOD | XFS_ICHGTIME_CHG);

  if (new_parent && src_is_directory) {
   xfs_bumplink(tp, target_dp);
  }
 } else {
  error = xfs_dir_replace(tp, target_dp, target_name,
     src_ip->i_ino, spaceres);
  if (error)
   goto out_trans_cancel;

  xfs_trans_ichgtime(tp, target_dp,
     XFS_ICHGTIME_MOD | XFS_ICHGTIME_CHG);





  error = xfs_droplink(tp, target_ip);
  if (error)
   goto out_trans_cancel;

  if (src_is_directory) {



   error = xfs_droplink(tp, target_ip);
   if (error)
    goto out_trans_cancel;
  }
 }




 if (new_parent && src_is_directory) {




  error = xfs_dir_replace(tp, src_ip, &xfs_name_dotdot,
     target_dp->i_ino, spaceres);
  ASSERT(error != -EEXIST);
  if (error)
   goto out_trans_cancel;
 }
 xfs_trans_ichgtime(tp, src_ip, XFS_ICHGTIME_CHG);
 xfs_trans_log_inode(tp, src_ip, XFS_ILOG_CORE);






 if (src_is_directory && (new_parent || target_ip != ((void*)0))) {





  error = xfs_droplink(tp, src_dp);
  if (error)
   goto out_trans_cancel;
 }






 if (wip) {
  error = xfs_dir_replace(tp, src_dp, src_name, wip->i_ino,
     spaceres);
 } else
  error = xfs_dir_removename(tp, src_dp, src_name, src_ip->i_ino,
        spaceres);
 if (error)
  goto out_trans_cancel;

 xfs_trans_ichgtime(tp, src_dp, XFS_ICHGTIME_MOD | XFS_ICHGTIME_CHG);
 xfs_trans_log_inode(tp, src_dp, XFS_ILOG_CORE);
 if (new_parent)
  xfs_trans_log_inode(tp, target_dp, XFS_ILOG_CORE);

 error = xfs_finish_rename(tp);
 if (wip)
  xfs_irele(wip);
 return error;

out_trans_cancel:
 xfs_trans_cancel(tp);
out_release_wip:
 if (wip)
  xfs_irele(wip);
 return error;
}
