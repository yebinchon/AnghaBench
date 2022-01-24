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
struct rpc_xprt_switch {int dummy; } ;
struct rpc_xprt {TYPE_2__* bc_xprt; } ;
struct rpc_create_args {int protocol; int flags; TYPE_1__* bc_xprt; } ;
struct rpc_clnt {int cl_softrtry; int cl_softerr; int cl_autobind; int cl_noretranstimeo; int cl_discrtry; int cl_chatty; } ;
struct TYPE_4__ {struct rpc_xprt_switch* xpt_bc_xps; } ;
struct TYPE_3__ {struct rpc_xprt_switch* xpt_bc_xps; } ;

/* Variables and functions */
 int ENOMEM ; 
 struct rpc_clnt* FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC1 (struct rpc_clnt*) ; 
 int RPC_CLNT_CREATE_AUTOBIND ; 
 int RPC_CLNT_CREATE_DISCRTRY ; 
 int RPC_CLNT_CREATE_HARDRTRY ; 
 int RPC_CLNT_CREATE_NOPING ; 
 int RPC_CLNT_CREATE_NO_RETRANS_TIMEOUT ; 
 int RPC_CLNT_CREATE_QUIET ; 
 int RPC_CLNT_CREATE_SOFTERR ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int XPRT_TRANSPORT_BC ; 
 struct rpc_clnt* FUNC3 (struct rpc_create_args*,struct rpc_xprt_switch*,struct rpc_xprt*,int /*<<< orphan*/ *) ; 
 int FUNC4 (struct rpc_clnt*) ; 
 int /*<<< orphan*/  FUNC5 (struct rpc_clnt*) ; 
 int /*<<< orphan*/  FUNC6 (struct rpc_xprt*) ; 
 struct rpc_xprt_switch* FUNC7 (struct rpc_xprt*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct rpc_xprt_switch*) ; 

__attribute__((used)) static struct rpc_clnt *FUNC9(struct rpc_create_args *args,
					struct rpc_xprt *xprt)
{
	struct rpc_clnt *clnt = NULL;
	struct rpc_xprt_switch *xps;

	if (args->bc_xprt && args->bc_xprt->xpt_bc_xps) {
		FUNC2(!(args->protocol & XPRT_TRANSPORT_BC));
		xps = args->bc_xprt->xpt_bc_xps;
		FUNC8(xps);
	} else {
		xps = FUNC7(xprt, GFP_KERNEL);
		if (xps == NULL) {
			FUNC6(xprt);
			return FUNC0(-ENOMEM);
		}
		if (xprt->bc_xprt) {
			FUNC8(xps);
			xprt->bc_xprt->xpt_bc_xps = xps;
		}
	}
	clnt = FUNC3(args, xps, xprt, NULL);
	if (FUNC1(clnt))
		return clnt;

	if (!(args->flags & RPC_CLNT_CREATE_NOPING)) {
		int err = FUNC4(clnt);
		if (err != 0) {
			FUNC5(clnt);
			return FUNC0(err);
		}
	}

	clnt->cl_softrtry = 1;
	if (args->flags & (RPC_CLNT_CREATE_HARDRTRY|RPC_CLNT_CREATE_SOFTERR)) {
		clnt->cl_softrtry = 0;
		if (args->flags & RPC_CLNT_CREATE_SOFTERR)
			clnt->cl_softerr = 1;
	}

	if (args->flags & RPC_CLNT_CREATE_AUTOBIND)
		clnt->cl_autobind = 1;
	if (args->flags & RPC_CLNT_CREATE_NO_RETRANS_TIMEOUT)
		clnt->cl_noretranstimeo = 1;
	if (args->flags & RPC_CLNT_CREATE_DISCRTRY)
		clnt->cl_discrtry = 1;
	if (!(args->flags & RPC_CLNT_CREATE_QUIET))
		clnt->cl_chatty = 1;

	return clnt;
}