
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_4__ ;
typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;
typedef struct TYPE_14__ TYPE_11__ ;


typedef int xfs_trans_t ;
struct TYPE_16__ {TYPE_1__* d_ops; } ;
typedef TYPE_2__ xfs_inode_t ;
struct TYPE_17__ {int bestcount; } ;
typedef TYPE_3__ xfs_dir2_leaf_tail_t ;
struct xfs_dir2_data_hdr {scalar_t__ magic; } ;
typedef struct xfs_dir2_data_hdr xfs_dir2_leaf_t ;
typedef int xfs_dir2_db_t ;
struct TYPE_18__ {TYPE_11__* geo; int * trans; TYPE_2__* dp; } ;
typedef TYPE_4__ xfs_da_args_t ;
struct xfs_dir2_data_free {int length; } ;
struct xfs_buf {struct xfs_dir2_data_hdr* b_addr; } ;
typedef int __be16 ;
struct TYPE_15__ {scalar_t__ data_entry_offset; struct xfs_dir2_data_free* (* data_bestfree_p ) (struct xfs_dir2_data_hdr*) ;} ;
struct TYPE_14__ {scalar_t__ blksize; } ;


 int ASSERT (int) ;
 int ENOSPC ;
 int XFS_DIR2_DATA_MAGIC ;
 int XFS_DIR3_DATA_MAGIC ;
 scalar_t__ be16_to_cpu (int ) ;
 int be32_add_cpu (int *,int) ;
 int be32_to_cpu (int ) ;
 scalar_t__ cpu_to_be32 (int ) ;
 int memmove (int *,int *,int) ;
 struct xfs_dir2_data_free* stub1 (struct xfs_dir2_data_hdr*) ;
 int xfs_dir2_db_to_da (TYPE_11__*,int) ;
 int * xfs_dir2_leaf_bests_p (TYPE_3__*) ;
 TYPE_3__* xfs_dir2_leaf_tail_p (TYPE_11__*,struct xfs_dir2_data_hdr*) ;
 int xfs_dir2_shrink_inode (TYPE_4__*,int,struct xfs_buf*) ;
 int xfs_dir3_data_read (int *,TYPE_2__*,int ,int,struct xfs_buf**) ;
 int xfs_dir3_leaf_log_bests (TYPE_4__*,struct xfs_buf*,int ,int) ;
 int xfs_dir3_leaf_log_tail (TYPE_4__*,struct xfs_buf*) ;
 int xfs_trans_brelse (int *,struct xfs_buf*) ;

int
xfs_dir2_leaf_trim_data(
 xfs_da_args_t *args,
 struct xfs_buf *lbp,
 xfs_dir2_db_t db)
{
 __be16 *bestsp;
 struct xfs_buf *dbp;
 xfs_inode_t *dp;
 int error;
 xfs_dir2_leaf_t *leaf;
 xfs_dir2_leaf_tail_t *ltp;
 xfs_trans_t *tp;

 dp = args->dp;
 tp = args->trans;



 error = xfs_dir3_data_read(tp, dp, xfs_dir2_db_to_da(args->geo, db),
       -1, &dbp);
 if (error)
  return error;

 leaf = lbp->b_addr;
 ltp = xfs_dir2_leaf_tail_p(args->geo, leaf);
 if ((error = xfs_dir2_shrink_inode(args, db, dbp))) {
  ASSERT(error != -ENOSPC);
  xfs_trans_brelse(tp, dbp);
  return error;
 }



 bestsp = xfs_dir2_leaf_bests_p(ltp);
 be32_add_cpu(&ltp->bestcount, -1);
 memmove(&bestsp[1], &bestsp[0], be32_to_cpu(ltp->bestcount) * sizeof(*bestsp));
 xfs_dir3_leaf_log_tail(args, lbp);
 xfs_dir3_leaf_log_bests(args, lbp, 0, be32_to_cpu(ltp->bestcount) - 1);
 return 0;
}
