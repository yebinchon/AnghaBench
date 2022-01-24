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
struct rpc_task {int dummy; } ;
struct nfs_commit_data {int /*<<< orphan*/  inode; } ;
struct TYPE_2__ {int /*<<< orphan*/ * cl_metrics; } ;

/* Variables and functions */
 size_t NFSPROC4_CLNT_COMMIT ; 
 TYPE_1__* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct rpc_task*,struct nfs_commit_data*) ; 
 int /*<<< orphan*/  FUNC2 (struct rpc_task*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct rpc_task *task, void *data)
{
	struct nfs_commit_data *cdata = data;

	FUNC1(task, cdata);
	FUNC2(task,
	    &FUNC0(cdata->inode)->cl_metrics[NFSPROC4_CLNT_COMMIT]);
}