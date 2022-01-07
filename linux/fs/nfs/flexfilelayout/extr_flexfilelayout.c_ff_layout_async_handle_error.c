
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct rpc_task {scalar_t__ tk_status; } ;
struct pnfs_layout_segment {int dummy; } ;
struct nfs_client {TYPE_2__* cl_nfs_mod; } ;
struct nfs4_state {int dummy; } ;
struct TYPE_4__ {TYPE_1__* rpc_vers; } ;
struct TYPE_3__ {int number; } ;


 int NFS4ERR_RESET_TO_PNFS ;
 int WARN_ON_ONCE (int) ;
 int ff_layout_async_handle_error_v3 (struct rpc_task*,struct pnfs_layout_segment*,int) ;
 int ff_layout_async_handle_error_v4 (struct rpc_task*,struct nfs4_state*,struct nfs_client*,struct pnfs_layout_segment*,int) ;
 int ff_layout_mark_ds_reachable (struct pnfs_layout_segment*,int) ;
 int pnfs_is_valid_lseg (struct pnfs_layout_segment*) ;

__attribute__((used)) static int ff_layout_async_handle_error(struct rpc_task *task,
     struct nfs4_state *state,
     struct nfs_client *clp,
     struct pnfs_layout_segment *lseg,
     int idx)
{
 int vers = clp->cl_nfs_mod->rpc_vers->number;

 if (task->tk_status >= 0) {
  ff_layout_mark_ds_reachable(lseg, idx);
  return 0;
 }


 if (!pnfs_is_valid_lseg(lseg))
  return -NFS4ERR_RESET_TO_PNFS;

 switch (vers) {
 case 3:
  return ff_layout_async_handle_error_v3(task, lseg, idx);
 case 4:
  return ff_layout_async_handle_error_v4(task, state, clp,
             lseg, idx);
 default:

  WARN_ON_ONCE(1);
  return 0;
 }
}
