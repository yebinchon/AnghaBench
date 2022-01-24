#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct rpc_task {int /*<<< orphan*/  tk_ops; } ;
struct nfs_pgio_res {scalar_t__ count; } ;
struct nfs_pgio_args {int /*<<< orphan*/  count; int /*<<< orphan*/  pgbase; int /*<<< orphan*/  offset; } ;
struct nfs_pgio_header {int /*<<< orphan*/  mds_offset; int /*<<< orphan*/  pnfs_error; int /*<<< orphan*/  inode; struct nfs_pgio_res res; struct nfs_pgio_args args; } ;

/* Variables and functions */
 int /*<<< orphan*/  EAGAIN ; 
 int /*<<< orphan*/  EIO ; 
 int /*<<< orphan*/  NFSIOS_SHORTREAD ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct nfs_pgio_header*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct rpc_task*) ; 

__attribute__((used)) static void FUNC3(struct rpc_task *task,
			       struct nfs_pgio_header *hdr)
{
	struct nfs_pgio_args *argp = &hdr->args;
	struct nfs_pgio_res  *resp = &hdr->res;

	/* This is a short read! */
	FUNC0(hdr->inode, NFSIOS_SHORTREAD);
	/* Has the server at least made some progress? */
	if (resp->count == 0) {
		FUNC1(hdr, -EIO, argp->offset);
		return;
	}

	/* For non rpc-based layout drivers, retry-through-MDS */
	if (!task->tk_ops) {
		hdr->pnfs_error = -EAGAIN;
		return;
	}

	/* Yes, so retry the read at the end of the hdr */
	hdr->mds_offset += resp->count;
	argp->offset += resp->count;
	argp->pgbase += resp->count;
	argp->count -= resp->count;
	FUNC2(task);
}