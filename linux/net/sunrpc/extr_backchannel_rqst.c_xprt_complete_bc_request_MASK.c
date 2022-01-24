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
typedef  int /*<<< orphan*/  uint32_t ;
struct svc_serv {int /*<<< orphan*/  sv_cb_lock; int /*<<< orphan*/  sv_cb_waitq; int /*<<< orphan*/  sv_cb_list; } ;
struct rpc_xprt {int /*<<< orphan*/  bc_pa_lock; int /*<<< orphan*/  bc_alloc_count; struct svc_serv* bc_serv; } ;
struct TYPE_2__ {int /*<<< orphan*/  len; } ;
struct rpc_rqst {int /*<<< orphan*/  rq_bc_list; int /*<<< orphan*/  rq_bc_pa_state; TYPE_1__ rq_private_buf; int /*<<< orphan*/  rq_bc_pa_list; struct rpc_xprt* rq_xprt; } ;

/* Variables and functions */
 int /*<<< orphan*/  RPC_BC_PA_IN_USE ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct rpc_xprt*) ; 

void FUNC8(struct rpc_rqst *req, uint32_t copied)
{
	struct rpc_xprt *xprt = req->rq_xprt;
	struct svc_serv *bc_serv = xprt->bc_serv;

	FUNC4(&xprt->bc_pa_lock);
	FUNC2(&req->rq_bc_pa_list);
	xprt->bc_alloc_count--;
	FUNC5(&xprt->bc_pa_lock);

	req->rq_private_buf.len = copied;
	FUNC3(RPC_BC_PA_IN_USE, &req->rq_bc_pa_state);

	FUNC0("RPC:       add callback request to list\n");
	FUNC7(xprt);
	FUNC4(&bc_serv->sv_cb_lock);
	FUNC1(&req->rq_bc_list, &bc_serv->sv_cb_list);
	FUNC6(&bc_serv->sv_cb_waitq);
	FUNC5(&bc_serv->sv_cb_lock);
}