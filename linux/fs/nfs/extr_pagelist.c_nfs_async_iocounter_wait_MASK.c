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
struct rpc_task {int dummy; } ;
struct nfs_lock_context {int /*<<< orphan*/  io_count; TYPE_1__* open_context; } ;
struct inode {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  uoc_rpcwaitq; } ;
struct TYPE_3__ {int /*<<< orphan*/  dentry; } ;

/* Variables and functions */
 TYPE_2__* FUNC0 (struct inode*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 struct inode* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct rpc_task*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,struct rpc_task*) ; 

bool
FUNC5(struct rpc_task *task, struct nfs_lock_context *l_ctx)
{
	struct inode *inode = FUNC2(l_ctx->open_context->dentry);
	bool ret = false;

	if (FUNC1(&l_ctx->io_count) > 0) {
		FUNC3(&FUNC0(inode)->uoc_rpcwaitq, task, NULL);
		ret = true;
	}

	if (FUNC1(&l_ctx->io_count) == 0) {
		FUNC4(&FUNC0(inode)->uoc_rpcwaitq, task);
		ret = false;
	}

	return ret;
}