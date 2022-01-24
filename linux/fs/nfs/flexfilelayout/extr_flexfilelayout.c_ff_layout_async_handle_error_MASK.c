#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct rpc_task {scalar_t__ tk_status; } ;
struct pnfs_layout_segment {int dummy; } ;
struct nfs_client {TYPE_2__* cl_nfs_mod; } ;
struct nfs4_state {int dummy; } ;
struct TYPE_4__ {TYPE_1__* rpc_vers; } ;
struct TYPE_3__ {int number; } ;

/* Variables and functions */
 int NFS4ERR_RESET_TO_PNFS ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (struct rpc_task*,struct pnfs_layout_segment*,int) ; 
 int FUNC2 (struct rpc_task*,struct nfs4_state*,struct nfs_client*,struct pnfs_layout_segment*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct pnfs_layout_segment*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct pnfs_layout_segment*) ; 

__attribute__((used)) static int FUNC5(struct rpc_task *task,
					struct nfs4_state *state,
					struct nfs_client *clp,
					struct pnfs_layout_segment *lseg,
					int idx)
{
	int vers = clp->cl_nfs_mod->rpc_vers->number;

	if (task->tk_status >= 0) {
		FUNC3(lseg, idx);
		return 0;
	}

	/* Handle the case of an invalid layout segment */
	if (!FUNC4(lseg))
		return -NFS4ERR_RESET_TO_PNFS;

	switch (vers) {
	case 3:
		return FUNC1(task, lseg, idx);
	case 4:
		return FUNC2(task, state, clp,
						       lseg, idx);
	default:
		/* should never happen */
		FUNC0(1);
		return 0;
	}
}