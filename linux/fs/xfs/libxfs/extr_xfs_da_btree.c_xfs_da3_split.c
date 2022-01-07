
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_8__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct xfs_da_state_blk {scalar_t__ magic; scalar_t__ blkno; TYPE_3__* bp; } ;
struct TYPE_12__ {int active; struct xfs_da_state_blk* blk; } ;
struct TYPE_9__ {struct xfs_da_state_blk* blk; } ;
struct xfs_da_state {int extravalid; int extraafter; TYPE_5__* args; TYPE_4__ path; struct xfs_da_state_blk extrablk; int inleaf; TYPE_1__ altpath; } ;
struct TYPE_14__ {void* forw; void* back; } ;
struct TYPE_10__ {TYPE_8__ info; } ;
struct xfs_da_intnode {TYPE_2__ hdr; } ;
struct TYPE_13__ {int trans; } ;
struct TYPE_11__ {struct xfs_da_intnode* b_addr; } ;


 int ASSERT (int) ;
 int EFSCORRUPTED ;
 int ENOSPC ;

 int XFS_DA_LOGRANGE (struct xfs_da_intnode*,TYPE_8__*,int) ;

 int XFS_DA_NODE_MAXDEPTH ;

 scalar_t__ be32_to_cpu (void*) ;
 void* cpu_to_be32 (scalar_t__) ;
 int trace_xfs_attr_leaf_split_after (TYPE_5__*) ;
 int trace_xfs_attr_leaf_split_before (TYPE_5__*) ;
 int trace_xfs_da_split (TYPE_5__*) ;
 int xfs_attr3_leaf_split (struct xfs_da_state*,struct xfs_da_state_blk*,struct xfs_da_state_blk*) ;
 int xfs_da3_fixhashpath (struct xfs_da_state*,TYPE_4__*) ;
 int xfs_da3_node_split (struct xfs_da_state*,struct xfs_da_state_blk*,struct xfs_da_state_blk*,struct xfs_da_state_blk*,int,int*) ;
 int xfs_da3_root_split (struct xfs_da_state*,struct xfs_da_state_blk*,struct xfs_da_state_blk*) ;
 int xfs_dir2_leafn_split (struct xfs_da_state*,struct xfs_da_state_blk*,struct xfs_da_state_blk*) ;
 int xfs_trans_log_buf (int ,TYPE_3__*,int ) ;

int
xfs_da3_split(
 struct xfs_da_state *state)
{
 struct xfs_da_state_blk *oldblk;
 struct xfs_da_state_blk *newblk;
 struct xfs_da_state_blk *addblk;
 struct xfs_da_intnode *node;
 int max;
 int action = 0;
 int error;
 int i;

 trace_xfs_da_split(state->args);







 max = state->path.active - 1;
 ASSERT((max >= 0) && (max < XFS_DA_NODE_MAXDEPTH));
 ASSERT(state->path.blk[max].magic == 130 ||
        state->path.blk[max].magic == 128);

 addblk = &state->path.blk[max];
 for (i = max; (i >= 0) && addblk; state->path.active--, i--) {
  oldblk = &state->path.blk[i];
  newblk = &state->altpath.blk[i];







  switch (oldblk->magic) {
  case 130:
   error = xfs_attr3_leaf_split(state, oldblk, newblk);
   if ((error != 0) && (error != -ENOSPC)) {
    return error;
   }
   if (!error) {
    addblk = newblk;
    break;
   }





   state->extravalid = 1;
   if (state->inleaf) {
    state->extraafter = 0;
    trace_xfs_attr_leaf_split_before(state->args);
    error = xfs_attr3_leaf_split(state, oldblk,
           &state->extrablk);
   } else {
    state->extraafter = 1;
    trace_xfs_attr_leaf_split_after(state->args);
    error = xfs_attr3_leaf_split(state, newblk,
           &state->extrablk);
   }
   if (error)
    return error;
   addblk = newblk;
   break;
  case 128:
   error = xfs_dir2_leafn_split(state, oldblk, newblk);
   if (error)
    return error;
   addblk = newblk;
   break;
  case 129:
   error = xfs_da3_node_split(state, oldblk, newblk, addblk,
        max - i, &action);
   addblk->bp = ((void*)0);
   if (error)
    return error;



   if (action)
    addblk = newblk;
   else
    addblk = ((void*)0);
   break;
  }




  xfs_da3_fixhashpath(state, &state->path);
 }
 if (!addblk)
  return 0;






 ASSERT(state->extravalid == 0 ||
        state->path.blk[max].magic == 128);




 ASSERT(state->path.active == 0);
 oldblk = &state->path.blk[0];
 error = xfs_da3_root_split(state, oldblk, addblk);
 if (error)
  goto out;
 node = oldblk->bp->b_addr;
 if (node->hdr.info.forw) {
  if (be32_to_cpu(node->hdr.info.forw) != addblk->blkno) {
   error = -EFSCORRUPTED;
   goto out;
  }
  node = addblk->bp->b_addr;
  node->hdr.info.back = cpu_to_be32(oldblk->blkno);
  xfs_trans_log_buf(state->args->trans, addblk->bp,
      XFS_DA_LOGRANGE(node, &node->hdr.info,
      sizeof(node->hdr.info)));
 }
 node = oldblk->bp->b_addr;
 if (node->hdr.info.back) {
  if (be32_to_cpu(node->hdr.info.back) != addblk->blkno) {
   error = -EFSCORRUPTED;
   goto out;
  }
  node = addblk->bp->b_addr;
  node->hdr.info.forw = cpu_to_be32(oldblk->blkno);
  xfs_trans_log_buf(state->args->trans, addblk->bp,
      XFS_DA_LOGRANGE(node, &node->hdr.info,
      sizeof(node->hdr.info)));
 }
out:
 addblk->bp = ((void*)0);
 return error;
}
