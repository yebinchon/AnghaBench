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
typedef  int /*<<< orphan*/  u32 ;
struct seq_file {int dummy; } ;
struct rpc_task {int /*<<< orphan*/  tk_action; int /*<<< orphan*/  tk_ops; int /*<<< orphan*/  tk_status; int /*<<< orphan*/  tk_flags; int /*<<< orphan*/  tk_pid; TYPE_1__* tk_rqstp; int /*<<< orphan*/  tk_waitqueue; struct rpc_clnt* tk_client; } ;
struct rpc_clnt {int /*<<< orphan*/  cl_vers; TYPE_2__* cl_program; int /*<<< orphan*/  cl_clid; } ;
struct TYPE_4__ {int /*<<< orphan*/  name; } ;
struct TYPE_3__ {int /*<<< orphan*/  rq_xid; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct rpc_task*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct rpc_task*) ; 
 char* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct rpc_task*) ; 
 int /*<<< orphan*/  FUNC5 (struct seq_file*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*) ; 

__attribute__((used)) static int
FUNC6(struct seq_file *f, void *v)
{
	u32 xid = 0;
	struct rpc_task *task = v;
	struct rpc_clnt *clnt = task->tk_client;
	const char *rpc_waitq = "none";

	if (FUNC0(task))
		rpc_waitq = FUNC3(task->tk_waitqueue);

	if (task->tk_rqstp)
		xid = FUNC1(task->tk_rqstp->rq_xid);

	FUNC5(f, "%5u %04x %6d 0x%x 0x%x %8ld %ps %sv%u %s a:%ps q:%s\n",
		task->tk_pid, task->tk_flags, task->tk_status,
		clnt->cl_clid, xid, FUNC4(task), task->tk_ops,
		clnt->cl_program->name, clnt->cl_vers, FUNC2(task),
		task->tk_action, rpc_waitq);
	return 0;
}