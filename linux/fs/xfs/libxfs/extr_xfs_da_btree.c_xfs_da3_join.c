
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xfs_da_state_blk {scalar_t__ magic; int * bp; int blkno; } ;
struct TYPE_2__ {size_t active; struct xfs_da_state_blk* blk; } ;
struct xfs_da_state {TYPE_1__ path; int args; TYPE_1__ altpath; } ;


 int ASSERT (int) ;



 int trace_xfs_da_join (int ) ;
 int xfs_attr3_leaf_toosmall (struct xfs_da_state*,int*) ;
 int xfs_attr3_leaf_unbalance (struct xfs_da_state*,struct xfs_da_state_blk*,struct xfs_da_state_blk*) ;
 int xfs_da3_blk_unlink (struct xfs_da_state*,struct xfs_da_state_blk*,struct xfs_da_state_blk*) ;
 int xfs_da3_fixhashpath (struct xfs_da_state*,TYPE_1__*) ;
 int xfs_da3_node_remove (struct xfs_da_state*,struct xfs_da_state_blk*) ;
 int xfs_da3_node_toosmall (struct xfs_da_state*,int*) ;
 int xfs_da3_node_unbalance (struct xfs_da_state*,struct xfs_da_state_blk*,struct xfs_da_state_blk*) ;
 int xfs_da3_root_join (struct xfs_da_state*,struct xfs_da_state_blk*) ;
 int xfs_da_shrink_inode (int ,int ,int *) ;
 int xfs_da_state_kill_altpath (struct xfs_da_state*) ;
 int xfs_dir2_leafn_toosmall (struct xfs_da_state*,int*) ;
 int xfs_dir2_leafn_unbalance (struct xfs_da_state*,struct xfs_da_state_blk*,struct xfs_da_state_blk*) ;

int
xfs_da3_join(
 struct xfs_da_state *state)
{
 struct xfs_da_state_blk *drop_blk;
 struct xfs_da_state_blk *save_blk;
 int action = 0;
 int error;

 trace_xfs_da_join(state->args);

 drop_blk = &state->path.blk[ state->path.active-1 ];
 save_blk = &state->altpath.blk[ state->path.active-1 ];
 ASSERT(state->path.blk[0].magic == 129);
 ASSERT(drop_blk->magic == 130 ||
        drop_blk->magic == 128);





 for ( ; state->path.active >= 2; drop_blk--, save_blk--,
   state->path.active--) {






  switch (drop_blk->magic) {
  case 130:
   error = xfs_attr3_leaf_toosmall(state, &action);
   if (error)
    return error;
   if (action == 0)
    return 0;
   xfs_attr3_leaf_unbalance(state, drop_blk, save_blk);
   break;
  case 128:
   error = xfs_dir2_leafn_toosmall(state, &action);
   if (error)
    return error;
   if (action == 0)
    return 0;
   xfs_dir2_leafn_unbalance(state, drop_blk, save_blk);
   break;
  case 129:




   xfs_da3_node_remove(state, drop_blk);
   xfs_da3_fixhashpath(state, &state->path);
   error = xfs_da3_node_toosmall(state, &action);
   if (error)
    return error;
   if (action == 0)
    return 0;
   xfs_da3_node_unbalance(state, drop_blk, save_blk);
   break;
  }
  xfs_da3_fixhashpath(state, &state->altpath);
  error = xfs_da3_blk_unlink(state, drop_blk, save_blk);
  xfs_da_state_kill_altpath(state);
  if (error)
   return error;
  error = xfs_da_shrink_inode(state->args, drop_blk->blkno,
        drop_blk->bp);
  drop_blk->bp = ((void*)0);
  if (error)
   return error;
 }





 xfs_da3_node_remove(state, drop_blk);
 xfs_da3_fixhashpath(state, &state->path);
 error = xfs_da3_root_join(state, &state->path.blk[0]);
 return error;
}
