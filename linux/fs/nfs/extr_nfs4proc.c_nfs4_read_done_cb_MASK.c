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
struct rpc_task {int /*<<< orphan*/  tk_status; } ;
struct nfs_server {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  stateid; TYPE_1__* context; } ;
struct nfs_pgio_header {int /*<<< orphan*/  timestamp; TYPE_2__ args; int /*<<< orphan*/  inode; } ;
struct nfs4_exception {scalar_t__ retry; int /*<<< orphan*/ * stateid; int /*<<< orphan*/  state; int /*<<< orphan*/  inode; } ;
struct TYPE_3__ {int /*<<< orphan*/  state; } ;

/* Variables and functions */
 int EAGAIN ; 
 struct nfs_server* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct rpc_task*,struct nfs_server*,int /*<<< orphan*/ ,struct nfs4_exception*) ; 
 int /*<<< orphan*/  FUNC2 (struct nfs_server*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct rpc_task*) ; 
 int /*<<< orphan*/  FUNC4 (struct nfs_pgio_header*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct rpc_task *task, struct nfs_pgio_header *hdr)
{
	struct nfs_server *server = FUNC0(hdr->inode);

	FUNC4(hdr, task->tk_status);
	if (task->tk_status < 0) {
		struct nfs4_exception exception = {
			.inode = hdr->inode,
			.state = hdr->args.context->state,
			.stateid = &hdr->args.stateid,
		};
		task->tk_status = FUNC1(task,
				server, task->tk_status, &exception);
		if (exception.retry) {
			FUNC3(task);
			return -EAGAIN;
		}
	}

	if (task->tk_status > 0)
		FUNC2(server, hdr->timestamp);
	return 0;
}