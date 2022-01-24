#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct rpc_task {scalar_t__ tk_op_cred; TYPE_1__* tk_client; struct rpc_rqst* tk_rqstp; } ;
struct rpc_rqst {struct rpc_cred* rq_cred; } ;
struct rpc_cred {int dummy; } ;
struct rpc_auth {TYPE_2__* au_ops; } ;
struct cred {int dummy; } ;
struct auth_cred {struct cred const* cred; } ;
struct TYPE_6__ {struct rpc_cred* (* lookup_cred ) (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ;} ;
struct TYPE_5__ {struct rpc_cred* (* lookup_cred ) (struct rpc_auth*,struct auth_cred*,int) ;} ;
struct TYPE_4__ {struct rpc_auth* cl_auth; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct rpc_cred*) ; 
 int FUNC1 (struct rpc_cred*) ; 
 int RPCAUTH_LOOKUP_NEW ; 
 int RPC_TASK_ASYNC ; 
 int RPC_TASK_NULLCREDS ; 
 int RPC_TASK_ROOTCREDS ; 
 TYPE_3__ authnull_ops ; 
 struct rpc_cred* FUNC2 (scalar_t__) ; 
 struct cred const machine_cred ; 
 int /*<<< orphan*/  FUNC3 (struct rpc_cred*) ; 
 struct rpc_cred* FUNC4 (struct rpc_task*,int) ; 
 struct rpc_cred* FUNC5 (struct rpc_task*,int) ; 
 struct rpc_cred* FUNC6 (struct rpc_task*,int) ; 
 struct rpc_cred* FUNC7 (struct rpc_auth*,struct auth_cred*,int) ; 
 struct rpc_cred* FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC9(struct rpc_task *task, const struct cred *cred, int flags)
{
	struct rpc_rqst *req = task->tk_rqstp;
	struct rpc_cred *new = NULL;
	int lookupflags = 0;
	struct rpc_auth *auth = task->tk_client->cl_auth;
	struct auth_cred acred = {
		.cred = cred,
	};

	if (flags & RPC_TASK_ASYNC)
		lookupflags |= RPCAUTH_LOOKUP_NEW;
	if (task->tk_op_cred)
		/* Task must use exactly this rpc_cred */
		new = FUNC2(task->tk_op_cred);
	else if (cred != NULL && cred != &machine_cred)
		new = auth->au_ops->lookup_cred(auth, &acred, lookupflags);
	else if (cred == &machine_cred)
		new = FUNC4(task, lookupflags);

	/* If machine cred couldn't be bound, try a root cred */
	if (new)
		;
	else if (cred == &machine_cred || (flags & RPC_TASK_ROOTCREDS))
		new = FUNC6(task, lookupflags);
	else if (flags & RPC_TASK_NULLCREDS)
		new = authnull_ops.lookup_cred(NULL, NULL, 0);
	else
		new = FUNC5(task, lookupflags);
	if (FUNC0(new))
		return FUNC1(new);
	FUNC3(req->rq_cred);
	req->rq_cred = new;
	return 0;
}