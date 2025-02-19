
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ xfs_fileoff_t ;
typedef scalar_t__ xfs_dir2_db_t ;
typedef scalar_t__ xfs_dablk_t ;
struct xfs_trans {int dummy; } ;
struct xfs_mount {int dummy; } ;
struct TYPE_5__ {scalar_t__ di_size; } ;
struct xfs_inode {TYPE_1__ i_d; struct xfs_mount* i_mount; } ;
struct xfs_da_args {TYPE_2__* geo; struct xfs_trans* trans; struct xfs_inode* dp; } ;
struct xfs_buf {int dummy; } ;
struct TYPE_6__ {scalar_t__ datablk; int fsbcount; } ;


 int ASSERT (int) ;
 int XFS_DATA_FORK ;
 int XFS_DIR2_LEAF_OFFSET ;
 scalar_t__ XFS_FSB_TO_B (struct xfs_mount*,scalar_t__) ;
 int XFS_ILOG_CORE ;
 int trace_xfs_dir2_shrink_inode (struct xfs_da_args*,scalar_t__) ;
 int xfs_bmap_last_before (struct xfs_trans*,struct xfs_inode*,scalar_t__*,int ) ;
 int xfs_bunmapi (struct xfs_trans*,struct xfs_inode*,scalar_t__,int ,int ,int ,int*) ;
 scalar_t__ xfs_dir2_byte_to_db (TYPE_2__*,int ) ;
 scalar_t__ xfs_dir2_db_off_to_byte (TYPE_2__*,scalar_t__,int ) ;
 scalar_t__ xfs_dir2_db_to_da (TYPE_2__*,scalar_t__) ;
 int xfs_trans_binval (struct xfs_trans*,struct xfs_buf*) ;
 int xfs_trans_log_inode (struct xfs_trans*,struct xfs_inode*,int ) ;

int
xfs_dir2_shrink_inode(
 struct xfs_da_args *args,
 xfs_dir2_db_t db,
 struct xfs_buf *bp)
{
 xfs_fileoff_t bno;
 xfs_dablk_t da;
 int done;
 struct xfs_inode *dp;
 int error;
 struct xfs_mount *mp;
 struct xfs_trans *tp;

 trace_xfs_dir2_shrink_inode(args, db);

 dp = args->dp;
 mp = dp->i_mount;
 tp = args->trans;
 da = xfs_dir2_db_to_da(args->geo, db);


 error = xfs_bunmapi(tp, dp, da, args->geo->fsbcount, 0, 0, &done);
 if (error) {
  return error;
 }
 ASSERT(done);



 xfs_trans_binval(tp, bp);



 if (db >= xfs_dir2_byte_to_db(args->geo, XFS_DIR2_LEAF_OFFSET))
  return 0;



 if (dp->i_d.di_size > xfs_dir2_db_off_to_byte(args->geo, db + 1, 0))
  return 0;
 bno = da;
 if ((error = xfs_bmap_last_before(tp, dp, &bno, XFS_DATA_FORK))) {



  return error;
 }
 if (db == args->geo->datablk)
  ASSERT(bno == 0);
 else
  ASSERT(bno > 0);



 dp->i_d.di_size = XFS_FSB_TO_B(mp, bno);
 xfs_trans_log_inode(tp, dp, XFS_ILOG_CORE);
 return 0;
}
