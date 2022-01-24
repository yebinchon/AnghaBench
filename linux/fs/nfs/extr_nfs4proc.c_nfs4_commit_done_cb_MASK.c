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
struct rpc_task {int /*<<< orphan*/  tk_status; } ;
struct nfs_commit_data {struct inode* inode; } ;
struct inode {int dummy; } ;

/* Variables and functions */
 int EAGAIN ; 
 int /*<<< orphan*/  FUNC0 (struct inode*) ; 
 int FUNC1 (struct rpc_task*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct rpc_task*) ; 
 int /*<<< orphan*/  FUNC3 (struct nfs_commit_data*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct rpc_task *task, struct nfs_commit_data *data)
{
	struct inode *inode = data->inode;

	FUNC3(data, task->tk_status);
	if (FUNC1(task, FUNC0(inode),
				    NULL, NULL) == -EAGAIN) {
		FUNC2(task);
		return -EAGAIN;
	}
	return 0;
}