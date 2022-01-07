
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef scalar_t__ xfs_dablk_t ;
typedef int xfs_attr_leaf_entry_t ;
struct xfs_da_state_blk {scalar_t__ blkno; TYPE_1__* bp; } ;
struct TYPE_8__ {int active; struct xfs_da_state_blk* blk; } ;
struct xfs_da_state {TYPE_2__ path; TYPE_2__ altpath; TYPE_4__* args; } ;
struct xfs_buf {struct xfs_attr_leafblock* b_addr; } ;
struct xfs_attr_leafblock {int dummy; } ;
struct xfs_attr3_icleaf_hdr {int count; int usedbytes; scalar_t__ forw; scalar_t__ back; } ;
struct TYPE_10__ {int trans; TYPE_3__* geo; int dp; } ;
struct TYPE_9__ {int blksize; } ;
struct TYPE_7__ {struct xfs_attr_leafblock* b_addr; } ;


 int memcpy (TYPE_2__*,TYPE_2__*,int) ;
 int trace_xfs_attr_leaf_toosmall (TYPE_4__*) ;
 int xfs_attr3_leaf_hdr_from_disk (TYPE_3__*,struct xfs_attr3_icleaf_hdr*,struct xfs_attr_leafblock*) ;
 int xfs_attr3_leaf_hdr_size (struct xfs_attr_leafblock*) ;
 int xfs_attr3_leaf_read (int ,int ,scalar_t__,int,struct xfs_buf**) ;
 int xfs_da3_path_shift (struct xfs_da_state*,TYPE_2__*,int,int ,int*) ;
 int xfs_trans_brelse (int ,struct xfs_buf*) ;

int
xfs_attr3_leaf_toosmall(
 struct xfs_da_state *state,
 int *action)
{
 struct xfs_attr_leafblock *leaf;
 struct xfs_da_state_blk *blk;
 struct xfs_attr3_icleaf_hdr ichdr;
 struct xfs_buf *bp;
 xfs_dablk_t blkno;
 int bytes;
 int forward;
 int error;
 int retval;
 int i;

 trace_xfs_attr_leaf_toosmall(state->args);






 blk = &state->path.blk[ state->path.active-1 ];
 leaf = blk->bp->b_addr;
 xfs_attr3_leaf_hdr_from_disk(state->args->geo, &ichdr, leaf);
 bytes = xfs_attr3_leaf_hdr_size(leaf) +
  ichdr.count * sizeof(xfs_attr_leaf_entry_t) +
  ichdr.usedbytes;
 if (bytes > (state->args->geo->blksize >> 1)) {
  *action = 0;
  return 0;
 }







 if (ichdr.count == 0) {




  forward = (ichdr.forw != 0);
  memcpy(&state->altpath, &state->path, sizeof(state->path));
  error = xfs_da3_path_shift(state, &state->altpath, forward,
       0, &retval);
  if (error)
   return error;
  if (retval) {
   *action = 0;
  } else {
   *action = 2;
  }
  return 0;
 }
 forward = ichdr.forw < ichdr.back;
 for (i = 0; i < 2; forward = !forward, i++) {
  struct xfs_attr3_icleaf_hdr ichdr2;
  if (forward)
   blkno = ichdr.forw;
  else
   blkno = ichdr.back;
  if (blkno == 0)
   continue;
  error = xfs_attr3_leaf_read(state->args->trans, state->args->dp,
     blkno, -1, &bp);
  if (error)
   return error;

  xfs_attr3_leaf_hdr_from_disk(state->args->geo, &ichdr2, bp->b_addr);

  bytes = state->args->geo->blksize -
   (state->args->geo->blksize >> 2) -
   ichdr.usedbytes - ichdr2.usedbytes -
   ((ichdr.count + ichdr2.count) *
     sizeof(xfs_attr_leaf_entry_t)) -
   xfs_attr3_leaf_hdr_size(leaf);

  xfs_trans_brelse(state->args->trans, bp);
  if (bytes >= 0)
   break;
 }
 if (i >= 2) {
  *action = 0;
  return 0;
 }





 memcpy(&state->altpath, &state->path, sizeof(state->path));
 if (blkno < blk->blkno) {
  error = xfs_da3_path_shift(state, &state->altpath, forward,
       0, &retval);
 } else {
  error = xfs_da3_path_shift(state, &state->path, forward,
       0, &retval);
 }
 if (error)
  return error;
 if (retval) {
  *action = 0;
 } else {
  *action = 1;
 }
 return 0;
}
