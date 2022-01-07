
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_9__ ;
typedef struct TYPE_17__ TYPE_6__ ;
typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef int xfs_dir2_leaf_t ;
typedef scalar_t__ xfs_dablk_t ;
struct TYPE_18__ {int active; TYPE_5__* blk; } ;
struct TYPE_15__ {TYPE_9__ path; TYPE_9__ altpath; TYPE_3__* args; } ;
typedef TYPE_4__ xfs_da_state_t ;
struct TYPE_16__ {scalar_t__ blkno; TYPE_6__* bp; } ;
typedef TYPE_5__ xfs_da_state_blk_t ;
struct xfs_inode {TYPE_2__* d_ops; } ;
struct xfs_dir3_icleaf_hdr {int count; int stale; scalar_t__ forw; scalar_t__ back; } ;
struct xfs_dir2_leaf_entry {int dummy; } ;
struct xfs_buf {int * b_addr; } ;
typedef int ents ;
struct TYPE_17__ {int * b_addr; } ;
struct TYPE_14__ {int trans; TYPE_1__* geo; struct xfs_inode* dp; } ;
struct TYPE_13__ {int leaf_hdr_size; struct xfs_dir2_leaf_entry* (* leaf_ents_p ) (int *) ;int (* leaf_hdr_from_disk ) (struct xfs_dir3_icleaf_hdr*,int *) ;} ;
struct TYPE_12__ {int blksize; } ;


 int memcpy (TYPE_9__*,TYPE_9__*,int) ;
 int stub1 (struct xfs_dir3_icleaf_hdr*,int *) ;
 struct xfs_dir2_leaf_entry* stub2 (int *) ;
 int stub3 (struct xfs_dir3_icleaf_hdr*,int *) ;
 struct xfs_dir2_leaf_entry* stub4 (int *) ;
 int xfs_da3_path_shift (TYPE_4__*,TYPE_9__*,int,int ,int*) ;
 int xfs_dir3_leaf_check (struct xfs_inode*,TYPE_6__*) ;
 int xfs_dir3_leafn_read (int ,struct xfs_inode*,scalar_t__,int,struct xfs_buf**) ;
 int xfs_trans_brelse (int ,struct xfs_buf*) ;

int
xfs_dir2_leafn_toosmall(
 xfs_da_state_t *state,
 int *action)
{
 xfs_da_state_blk_t *blk;
 xfs_dablk_t blkno;
 struct xfs_buf *bp;
 int bytes;
 int count;
 int error;
 int forward;
 int i;
 xfs_dir2_leaf_t *leaf;
 int rval;
 struct xfs_dir3_icleaf_hdr leafhdr;
 struct xfs_dir2_leaf_entry *ents;
 struct xfs_inode *dp = state->args->dp;






 blk = &state->path.blk[state->path.active - 1];
 leaf = blk->bp->b_addr;
 dp->d_ops->leaf_hdr_from_disk(&leafhdr, leaf);
 ents = dp->d_ops->leaf_ents_p(leaf);
 xfs_dir3_leaf_check(dp, blk->bp);

 count = leafhdr.count - leafhdr.stale;
 bytes = dp->d_ops->leaf_hdr_size + count * sizeof(ents[0]);
 if (bytes > (state->args->geo->blksize >> 1)) {



  *action = 0;
  return 0;
 }






 if (count == 0) {




  forward = (leafhdr.forw != 0);
  memcpy(&state->altpath, &state->path, sizeof(state->path));
  error = xfs_da3_path_shift(state, &state->altpath, forward, 0,
   &rval);
  if (error)
   return error;
  *action = rval ? 2 : 0;
  return 0;
 }







 forward = leafhdr.forw < leafhdr.back;
 for (i = 0, bp = ((void*)0); i < 2; forward = !forward, i++) {
  struct xfs_dir3_icleaf_hdr hdr2;

  blkno = forward ? leafhdr.forw : leafhdr.back;
  if (blkno == 0)
   continue;



  error = xfs_dir3_leafn_read(state->args->trans, dp,
         blkno, -1, &bp);
  if (error)
   return error;




  count = leafhdr.count - leafhdr.stale;
  bytes = state->args->geo->blksize -
   (state->args->geo->blksize >> 2);

  leaf = bp->b_addr;
  dp->d_ops->leaf_hdr_from_disk(&hdr2, leaf);
  ents = dp->d_ops->leaf_ents_p(leaf);
  count += hdr2.count - hdr2.stale;
  bytes -= count * sizeof(ents[0]);




  if (bytes >= 0)
   break;
  xfs_trans_brelse(state->args->trans, bp);
 }



 if (i >= 2) {
  *action = 0;
  return 0;
 }





 memcpy(&state->altpath, &state->path, sizeof(state->path));
 if (blkno < blk->blkno)
  error = xfs_da3_path_shift(state, &state->altpath, forward, 0,
   &rval);
 else
  error = xfs_da3_path_shift(state, &state->path, forward, 0,
   &rval);
 if (error) {
  return error;
 }
 *action = rval ? 0 : 1;
 return 0;
}
