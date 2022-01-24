#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct rpc_task {int /*<<< orphan*/  tk_status; int /*<<< orphan*/  tk_pid; } ;
struct nfs_commit_data {int /*<<< orphan*/  inode; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* commit_done ) (struct rpc_task*,struct nfs_commit_data*) ;} ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct rpc_task*,struct nfs_commit_data*) ; 
 int /*<<< orphan*/  FUNC3 (struct nfs_commit_data*) ; 

__attribute__((used)) static void FUNC4(struct rpc_task *task, void *calldata)
{
	struct nfs_commit_data	*data = calldata;

        FUNC1("NFS: %5u nfs_commit_done (status %d)\n",
                                task->tk_pid, task->tk_status);

	/* Call the NFS version-specific code */
	FUNC0(data->inode)->commit_done(task, data);
	FUNC3(data);
}