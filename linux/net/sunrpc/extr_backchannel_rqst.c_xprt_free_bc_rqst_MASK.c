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
struct rpc_xprt {int /*<<< orphan*/  bc_pa_lock; int /*<<< orphan*/  bc_slot_count; int /*<<< orphan*/  bc_alloc_count; int /*<<< orphan*/  bc_pa_list; scalar_t__ connect_cookie; } ;
struct rpc_rqst {int /*<<< orphan*/  rq_bc_pa_list; int /*<<< orphan*/  rq_bc_pa_state; scalar_t__ rq_connect_cookie; struct rpc_xprt* rq_xprt; } ;

/* Variables and functions */
 int /*<<< orphan*/  RPC_BC_PA_IN_USE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*,struct rpc_rqst*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct rpc_rqst*) ; 
 scalar_t__ FUNC9 (struct rpc_xprt*) ; 
 int /*<<< orphan*/  FUNC10 (struct rpc_xprt*) ; 

void FUNC11(struct rpc_rqst *req)
{
	struct rpc_xprt *xprt = req->rq_xprt;

	FUNC2("RPC:       free backchannel req=%p\n", req);

	req->rq_connect_cookie = xprt->connect_cookie - 1;
	FUNC5();
	FUNC1(RPC_BC_PA_IN_USE, &req->rq_bc_pa_state);
	FUNC4();

	/*
	 * Return it to the list of preallocations so that it
	 * may be reused by a new callback request.
	 */
	FUNC6(&xprt->bc_pa_lock);
	if (FUNC9(xprt)) {
		FUNC3(&req->rq_bc_pa_list, &xprt->bc_pa_list);
		xprt->bc_alloc_count++;
		FUNC0(&xprt->bc_slot_count);
		req = NULL;
	}
	FUNC7(&xprt->bc_pa_lock);
	if (req != NULL) {
		/*
		 * The last remaining session was destroyed while this
		 * entry was in use.  Free the entry and don't attempt
		 * to add back to the list because there is no need to
		 * have anymore preallocated entries.
		 */
		FUNC2("RPC:       Last session removed req=%p\n", req);
		FUNC8(req);
	}
	FUNC10(xprt);
}