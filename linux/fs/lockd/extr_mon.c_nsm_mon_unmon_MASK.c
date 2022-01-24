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
typedef  size_t u32 ;
struct rpc_message {int /*<<< orphan*/ * rpc_proc; struct nsm_res* rpc_resp; struct nsm_args* rpc_argp; } ;
struct rpc_clnt {int /*<<< orphan*/ * cl_procinfo; } ;
struct nsm_res {int dummy; } ;
struct nsm_handle {int /*<<< orphan*/  sm_mon_name; int /*<<< orphan*/  sm_priv; } ;
struct nsm_args {int vers; int /*<<< orphan*/  nodename; int /*<<< orphan*/  mon_name; int /*<<< orphan*/  proc; int /*<<< orphan*/  prog; int /*<<< orphan*/ * priv; } ;
struct nlm_host {TYPE_2__* net; int /*<<< orphan*/  nodename; } ;
struct TYPE_3__ {int /*<<< orphan*/  inum; } ;
struct TYPE_4__ {TYPE_1__ ns; } ;

/* Variables and functions */
 int ECONNREFUSED ; 
 scalar_t__ FUNC0 (struct rpc_clnt*) ; 
 int /*<<< orphan*/  NLMPROC_NSM_NOTIFY ; 
 int /*<<< orphan*/  NLM_PROGRAM ; 
 int FUNC1 (struct rpc_clnt*) ; 
 int /*<<< orphan*/  RPC_TASK_SOFTCONN ; 
 int /*<<< orphan*/  FUNC2 (char*,int,...) ; 
 int /*<<< orphan*/  FUNC3 (struct nsm_res*,int /*<<< orphan*/ ,int) ; 
 struct rpc_clnt* FUNC4 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct rpc_clnt*,struct rpc_message*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct rpc_clnt*) ; 
 int /*<<< orphan*/  FUNC7 (struct rpc_clnt*) ; 

__attribute__((used)) static int FUNC8(struct nsm_handle *nsm, u32 proc, struct nsm_res *res,
			 const struct nlm_host *host)
{
	int		status;
	struct rpc_clnt *clnt;
	struct nsm_args args = {
		.priv		= &nsm->sm_priv,
		.prog		= NLM_PROGRAM,
		.vers		= 3,
		.proc		= NLMPROC_NSM_NOTIFY,
		.mon_name	= nsm->sm_mon_name,
		.nodename	= host->nodename,
	};
	struct rpc_message msg = {
		.rpc_argp	= &args,
		.rpc_resp	= res,
	};

	FUNC3(res, 0, sizeof(*res));

	clnt = FUNC4(host->net, host->nodename);
	if (FUNC0(clnt)) {
		FUNC2("lockd: failed to create NSM upcall transport, "
			"status=%ld, net=%x\n", FUNC1(clnt),
			host->net->ns.inum);
		return FUNC1(clnt);
	}

	msg.rpc_proc = &clnt->cl_procinfo[proc];
	status = FUNC5(clnt, &msg, RPC_TASK_SOFTCONN);
	if (status == -ECONNREFUSED) {
		FUNC2("lockd:	NSM upcall RPC failed, status=%d, forcing rebind\n",
				status);
		FUNC6(clnt);
		status = FUNC5(clnt, &msg, RPC_TASK_SOFTCONN);
	}
	if (status < 0)
		FUNC2("lockd: NSM upcall RPC failed, status=%d\n",
				status);
	else
		status = 0;

	FUNC7(clnt);
	return status;
}