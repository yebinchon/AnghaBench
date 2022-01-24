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
struct rpc_task {int tk_flags; TYPE_2__* tk_xprt; int /*<<< orphan*/  tk_rqstp; int /*<<< orphan*/  tk_timeouts; int /*<<< orphan*/  tk_pid; struct rpc_clnt* tk_client; } ;
struct rpc_clnt {TYPE_1__* cl_program; scalar_t__ cl_chatty; } ;
struct TYPE_4__ {int /*<<< orphan*/  servername; } ;
struct TYPE_3__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  EIO ; 
 int /*<<< orphan*/  ETIMEDOUT ; 
 int RPC_CALL_MAJORSEEN ; 
 scalar_t__ FUNC0 (struct rpc_task*) ; 
 scalar_t__ FUNC1 (struct rpc_task*) ; 
 int RPC_TASK_NO_RETRANS_TIMEOUT ; 
 int RPC_TASK_TIMEOUT ; 
 int /*<<< orphan*/  FUNC2 (struct rpc_task*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct rpc_task*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct rpc_clnt*) ; 
 int /*<<< orphan*/  FUNC8 (struct rpc_task*) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC10(struct rpc_task *task)
{
	struct rpc_clnt	*clnt = task->tk_client;

	if (FUNC9(task->tk_rqstp) == 0)
		return;

	FUNC3("RPC: %5u call_timeout (major)\n", task->tk_pid);
	task->tk_timeouts++;

	if (FUNC1(task) && !FUNC6(task->tk_rqstp)) {
		FUNC5(task, -ETIMEDOUT);
		return;
	}

	if (FUNC0(task)) {
		/*
		 * Once a "no retrans timeout" soft tasks (a.k.a NFSv4) has
		 * been sent, it should time out only if the transport
		 * connection gets terminally broken.
		 */
		if ((task->tk_flags & RPC_TASK_NO_RETRANS_TIMEOUT) &&
		    FUNC6(task->tk_rqstp))
			return;

		if (clnt->cl_chatty) {
			FUNC4(
				"%s: server %s not responding, timed out\n",
				clnt->cl_program->name,
				task->tk_xprt->servername);
		}
		if (task->tk_flags & RPC_TASK_TIMEOUT)
			FUNC5(task, -ETIMEDOUT);
		else
			FUNC2(task, -EIO, -ETIMEDOUT);
		return;
	}

	if (!(task->tk_flags & RPC_CALL_MAJORSEEN)) {
		task->tk_flags |= RPC_CALL_MAJORSEEN;
		if (clnt->cl_chatty) {
			FUNC4(
				"%s: server %s not responding, still trying\n",
				clnt->cl_program->name,
				task->tk_xprt->servername);
		}
	}
	FUNC7(clnt);
	/*
	 * Did our request time out due to an RPCSEC_GSS out-of-sequence
	 * event? RFC2203 requires the server to drop all such requests.
	 */
	FUNC8(task);
}