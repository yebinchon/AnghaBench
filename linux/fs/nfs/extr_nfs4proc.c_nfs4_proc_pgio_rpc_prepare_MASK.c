#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct rpc_task {int dummy; } ;
struct TYPE_5__ {TYPE_3__* context; int /*<<< orphan*/  lock_context; int /*<<< orphan*/  stateid; int /*<<< orphan*/  seq_args; } ;
struct TYPE_6__ {int /*<<< orphan*/  seq_res; } ;
struct nfs_pgio_header {TYPE_1__ args; int /*<<< orphan*/  rw_mode; TYPE_2__ res; int /*<<< orphan*/  inode; } ;
struct TYPE_8__ {int /*<<< orphan*/  nfs_client; } ;
struct TYPE_7__ {int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  NFS_CONTEXT_BAD ; 
 TYPE_4__* FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ *,TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct rpc_task*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct rpc_task *task,
				      struct nfs_pgio_header *hdr)
{
	if (FUNC2(FUNC0(hdr->inode)->nfs_client,
			&hdr->args.seq_args,
			&hdr->res.seq_res,
			task))
		return 0;
	if (FUNC1(&hdr->args.stateid, hdr->args.context,
				hdr->args.lock_context,
				hdr->rw_mode) == -EIO)
		return -EIO;
	if (FUNC4(FUNC3(NFS_CONTEXT_BAD, &hdr->args.context->flags)))
		return -EIO;
	return 0;
}