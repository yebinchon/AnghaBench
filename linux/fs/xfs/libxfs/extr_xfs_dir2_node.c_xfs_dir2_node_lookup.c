
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_22__ TYPE_8__ ;
typedef struct TYPE_21__ TYPE_7__ ;
typedef struct TYPE_20__ TYPE_6__ ;
typedef struct TYPE_19__ TYPE_5__ ;
typedef struct TYPE_18__ TYPE_4__ ;
typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


struct TYPE_19__ {int namelen; int name; } ;
typedef TYPE_5__ xfs_dir2_data_entry_t ;
struct TYPE_18__ {int index; TYPE_8__* bp; } ;
struct TYPE_17__ {int active; TYPE_2__* blk; } ;
struct TYPE_20__ {TYPE_4__ extrablk; scalar_t__ extravalid; TYPE_3__ path; int mp; TYPE_7__* args; } ;
typedef TYPE_6__ xfs_da_state_t ;
struct TYPE_21__ {scalar_t__ cmpresult; int trans; TYPE_1__* dp; } ;
typedef TYPE_7__ xfs_da_args_t ;
struct TYPE_22__ {scalar_t__ b_addr; } ;
struct TYPE_16__ {TYPE_8__* bp; } ;
struct TYPE_15__ {int i_mount; } ;


 int ENOENT ;
 scalar_t__ XFS_CMP_CASE ;
 int trace_xfs_dir2_node_lookup (TYPE_7__*) ;
 int xfs_da3_node_lookup_int (TYPE_6__*,int*) ;
 TYPE_6__* xfs_da_state_alloc () ;
 int xfs_da_state_free (TYPE_6__*) ;
 int xfs_dir_cilookup_result (TYPE_7__*,int ,int ) ;
 int xfs_trans_brelse (int ,TYPE_8__*) ;

int
xfs_dir2_node_lookup(
 xfs_da_args_t *args)
{
 int error;
 int i;
 int rval;
 xfs_da_state_t *state;

 trace_xfs_dir2_node_lookup(args);




 state = xfs_da_state_alloc();
 state->args = args;
 state->mp = args->dp->i_mount;



 error = xfs_da3_node_lookup_int(state, &rval);
 if (error)
  rval = error;
 else if (rval == -ENOENT && args->cmpresult == XFS_CMP_CASE) {

  xfs_dir2_data_entry_t *dep;

  dep = (xfs_dir2_data_entry_t *)
   ((char *)state->extrablk.bp->b_addr +
       state->extrablk.index);
  rval = xfs_dir_cilookup_result(args, dep->name, dep->namelen);
 }



 for (i = 0; i < state->path.active; i++) {
  xfs_trans_brelse(args->trans, state->path.blk[i].bp);
  state->path.blk[i].bp = ((void*)0);
 }



 if (state->extravalid && state->extrablk.bp) {
  xfs_trans_brelse(args->trans, state->extrablk.bp);
  state->extrablk.bp = ((void*)0);
 }
 xfs_da_state_free(state);
 return rval;
}
