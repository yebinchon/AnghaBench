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
struct TYPE_3__ {int /*<<< orphan*/  seq_res; } ;
struct nfs_pgio_header {TYPE_2__* mds_ops; TYPE_1__ res; int /*<<< orphan*/  flags; } ;
struct TYPE_4__ {int /*<<< orphan*/  (* rpc_call_done ) (struct rpc_task*,struct nfs_pgio_header*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  NFS_IOHDR_REDO ; 
 int /*<<< orphan*/  FUNC0 (struct rpc_task*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct rpc_task*,struct nfs_pgio_header*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct rpc_task *task, void *data)
{
	struct nfs_pgio_header *hdr = data;

	if (FUNC2(NFS_IOHDR_REDO, &hdr->flags) &&
	    task->tk_status == 0) {
		FUNC0(task, &hdr->res.seq_res);
		return;
	}

	/* Note this may cause RPC to be resent */
	hdr->mds_ops->rpc_call_done(task, hdr);
}