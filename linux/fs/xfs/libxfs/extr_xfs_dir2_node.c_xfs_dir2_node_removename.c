
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct xfs_da_state_blk {scalar_t__ magic; int index; int bp; } ;
struct TYPE_4__ {int active; struct xfs_da_state_blk* blk; } ;
struct xfs_da_state {int extravalid; TYPE_2__ path; int extrablk; int mp; struct xfs_da_args* args; } ;
struct xfs_da_args {TYPE_1__* dp; } ;
struct TYPE_3__ {int i_mount; } ;


 int ASSERT (int) ;
 int EEXIST ;
 scalar_t__ XFS_DIR2_LEAFN_MAGIC ;
 int trace_xfs_dir2_node_removename (struct xfs_da_args*) ;
 int xfs_da3_fixhashpath (struct xfs_da_state*,TYPE_2__*) ;
 int xfs_da3_join (struct xfs_da_state*) ;
 int xfs_da3_node_lookup_int (struct xfs_da_state*,int*) ;
 struct xfs_da_state* xfs_da_state_alloc () ;
 int xfs_da_state_free (struct xfs_da_state*) ;
 int xfs_dir2_leafn_remove (struct xfs_da_args*,int ,int ,int *,int*) ;
 int xfs_dir2_node_to_leaf (struct xfs_da_state*) ;

int
xfs_dir2_node_removename(
 struct xfs_da_args *args)
{
 struct xfs_da_state_blk *blk;
 int error;
 int rval;
 struct xfs_da_state *state;

 trace_xfs_dir2_node_removename(args);




 state = xfs_da_state_alloc();
 state->args = args;
 state->mp = args->dp->i_mount;


 error = xfs_da3_node_lookup_int(state, &rval);
 if (error)
  goto out_free;


 if (rval != -EEXIST) {
  error = rval;
  goto out_free;
 }

 blk = &state->path.blk[state->path.active - 1];
 ASSERT(blk->magic == XFS_DIR2_LEAFN_MAGIC);
 ASSERT(state->extravalid);




 error = xfs_dir2_leafn_remove(args, blk->bp, blk->index,
  &state->extrablk, &rval);
 if (error)
  goto out_free;



 xfs_da3_fixhashpath(state, &state->path);



 if (rval && state->path.active > 1)
  error = xfs_da3_join(state);



 if (!error)
  error = xfs_dir2_node_to_leaf(state);
out_free:
 xfs_da_state_free(state);
 return error;
}
