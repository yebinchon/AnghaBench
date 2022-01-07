
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_32__ TYPE_7__ ;
typedef struct TYPE_31__ TYPE_6__ ;
typedef struct TYPE_30__ TYPE_5__ ;
typedef struct TYPE_29__ TYPE_4__ ;
typedef struct TYPE_28__ TYPE_3__ ;
typedef struct TYPE_27__ TYPE_2__ ;
typedef struct TYPE_26__ TYPE_1__ ;
typedef struct TYPE_25__ TYPE_18__ ;


typedef int xfs_trans_t ;
typedef int xfs_mount_t ;
struct TYPE_29__ {TYPE_1__* d_ops; } ;
typedef TYPE_4__ xfs_inode_t ;
typedef scalar_t__ xfs_fileoff_t ;
struct TYPE_30__ {int bestcount; } ;
typedef TYPE_5__ xfs_dir2_leaf_tail_t ;
typedef int xfs_dir2_leaf_t ;
typedef int xfs_dir2_free_t ;
typedef int xfs_dir2_data_off_t ;
struct TYPE_28__ {int active; TYPE_2__* blk; } ;
struct TYPE_31__ {TYPE_3__ path; int * mp; TYPE_7__* args; } ;
typedef TYPE_6__ xfs_da_state_t ;
struct TYPE_32__ {TYPE_18__* geo; int * trans; TYPE_4__* dp; } ;
typedef TYPE_7__ xfs_da_args_t ;
struct xfs_dir3_icleaf_hdr {scalar_t__ magic; scalar_t__ stale; } ;
struct xfs_dir3_icfree_hdr {int nvalid; int firstdb; } ;
struct xfs_buf {int * b_ops; int * b_addr; } ;
struct TYPE_27__ {struct xfs_buf* bp; } ;
struct TYPE_26__ {int (* leaf_hdr_to_disk ) (int *,struct xfs_dir3_icleaf_hdr*) ;int (* free_bests_p ) (int *) ;int (* free_hdr_from_disk ) (struct xfs_dir3_icfree_hdr*,int *) ;int (* leaf_hdr_from_disk ) (struct xfs_dir3_icleaf_hdr*,int *) ;} ;
struct TYPE_25__ {scalar_t__ fsbcount; scalar_t__ freeblk; scalar_t__ blksize; } ;


 int ASSERT (int) ;
 int ENOSPC ;
 int XFS_BLFT_DIR_LEAF1_BUF ;
 int XFS_DATA_FORK ;
 int XFS_DIR2_FREE_OFFSET ;
 scalar_t__ XFS_DIR2_LEAF1_MAGIC ;
 scalar_t__ XFS_DIR2_LEAFN_MAGIC ;
 scalar_t__ XFS_DIR2_LEAF_OFFSET ;
 scalar_t__ XFS_DIR3_LEAF1_MAGIC ;
 scalar_t__ XFS_DIR3_LEAFN_MAGIC ;
 scalar_t__ XFS_FSB_TO_B (int *,scalar_t__) ;
 scalar_t__ be32_to_cpu (int ) ;
 int cpu_to_be32 (int) ;
 int memcpy (int ,int ,int) ;
 int stub1 (struct xfs_dir3_icleaf_hdr*,int *) ;
 int stub2 (struct xfs_dir3_icfree_hdr*,int *) ;
 int stub3 (int *) ;
 int stub4 (int *,struct xfs_dir3_icleaf_hdr*) ;
 int trace_xfs_dir2_node_to_leaf (TYPE_7__*) ;
 int xfs_bmap_last_before (int *,TYPE_4__*,scalar_t__*,int ) ;
 int xfs_bmap_last_offset (TYPE_4__*,scalar_t__*,int ) ;
 int xfs_dir2_byte_to_db (TYPE_18__*,int ) ;
 int xfs_dir2_free_read (int *,TYPE_4__*,scalar_t__,struct xfs_buf**) ;
 int xfs_dir2_leaf_bests_p (TYPE_5__*) ;
 TYPE_5__* xfs_dir2_leaf_tail_p (TYPE_18__*,int *) ;
 int xfs_dir2_leaf_to_block (TYPE_7__*,struct xfs_buf*,int *) ;
 int xfs_dir2_node_trim_free (TYPE_7__*,scalar_t__,int*) ;
 int xfs_dir2_shrink_inode (TYPE_7__*,int ,struct xfs_buf*) ;
 int xfs_dir3_leaf1_buf_ops ;
 int xfs_dir3_leaf_check (TYPE_4__*,struct xfs_buf*) ;
 int xfs_dir3_leaf_compact (TYPE_7__*,struct xfs_dir3_icleaf_hdr*,struct xfs_buf*) ;
 int xfs_dir3_leaf_log_bests (TYPE_7__*,struct xfs_buf*,int ,scalar_t__) ;
 int xfs_dir3_leaf_log_header (TYPE_7__*,struct xfs_buf*) ;
 int xfs_dir3_leaf_log_tail (TYPE_7__*,struct xfs_buf*) ;
 scalar_t__ xfs_dir3_leaf_size (struct xfs_dir3_icleaf_hdr*,int) ;
 int xfs_trans_brelse (int *,struct xfs_buf*) ;
 int xfs_trans_buf_set_type (int *,struct xfs_buf*,int ) ;

int
xfs_dir2_node_to_leaf(
 xfs_da_state_t *state)
{
 xfs_da_args_t *args;
 xfs_inode_t *dp;
 int error;
 struct xfs_buf *fbp;
 xfs_fileoff_t fo;
 xfs_dir2_free_t *free;
 struct xfs_buf *lbp;
 xfs_dir2_leaf_tail_t *ltp;
 xfs_dir2_leaf_t *leaf;
 xfs_mount_t *mp;
 int rval;
 xfs_trans_t *tp;
 struct xfs_dir3_icleaf_hdr leafhdr;
 struct xfs_dir3_icfree_hdr freehdr;





 if (state->path.active > 1)
  return 0;
 args = state->args;

 trace_xfs_dir2_node_to_leaf(args);

 mp = state->mp;
 dp = args->dp;
 tp = args->trans;



 if ((error = xfs_bmap_last_offset(dp, &fo, XFS_DATA_FORK))) {
  return error;
 }
 fo -= args->geo->fsbcount;






 while (fo > args->geo->freeblk) {
  if ((error = xfs_dir2_node_trim_free(args, fo, &rval))) {
   return error;
  }
  if (rval)
   fo -= args->geo->fsbcount;
  else
   return 0;
 }



 if ((error = xfs_bmap_last_before(tp, dp, &fo, XFS_DATA_FORK))) {
  return error;
 }



 if (XFS_FSB_TO_B(mp, fo) > XFS_DIR2_LEAF_OFFSET + args->geo->blksize)
  return 0;
 lbp = state->path.blk[0].bp;
 leaf = lbp->b_addr;
 dp->d_ops->leaf_hdr_from_disk(&leafhdr, leaf);

 ASSERT(leafhdr.magic == XFS_DIR2_LEAFN_MAGIC ||
        leafhdr.magic == XFS_DIR3_LEAFN_MAGIC);




 error = xfs_dir2_free_read(tp, dp, args->geo->freeblk, &fbp);
 if (error)
  return error;
 free = fbp->b_addr;
 dp->d_ops->free_hdr_from_disk(&freehdr, free);

 ASSERT(!freehdr.firstdb);





 if (xfs_dir3_leaf_size(&leafhdr, freehdr.nvalid) > args->geo->blksize) {
  xfs_trans_brelse(tp, fbp);
  return 0;
 }




 if (leafhdr.stale)
  xfs_dir3_leaf_compact(args, &leafhdr, lbp);

 lbp->b_ops = &xfs_dir3_leaf1_buf_ops;
 xfs_trans_buf_set_type(tp, lbp, XFS_BLFT_DIR_LEAF1_BUF);
 leafhdr.magic = (leafhdr.magic == XFS_DIR2_LEAFN_MAGIC)
     ? XFS_DIR2_LEAF1_MAGIC
     : XFS_DIR3_LEAF1_MAGIC;




 ltp = xfs_dir2_leaf_tail_p(args->geo, leaf);
 ltp->bestcount = cpu_to_be32(freehdr.nvalid);




 memcpy(xfs_dir2_leaf_bests_p(ltp), dp->d_ops->free_bests_p(free),
  freehdr.nvalid * sizeof(xfs_dir2_data_off_t));

 dp->d_ops->leaf_hdr_to_disk(leaf, &leafhdr);
 xfs_dir3_leaf_log_header(args, lbp);
 xfs_dir3_leaf_log_bests(args, lbp, 0, be32_to_cpu(ltp->bestcount) - 1);
 xfs_dir3_leaf_log_tail(args, lbp);
 xfs_dir3_leaf_check(dp, lbp);




 error = xfs_dir2_shrink_inode(args,
   xfs_dir2_byte_to_db(args->geo, XFS_DIR2_FREE_OFFSET),
   fbp);
 if (error) {





  ASSERT(error != -ENOSPC);
  return error;
 }
 fbp = ((void*)0);






 error = xfs_dir2_leaf_to_block(args, lbp, ((void*)0));
 state->path.blk[0].bp = ((void*)0);
 return error;
}
